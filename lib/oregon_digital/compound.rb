module OregonDigital
  module Compound
    extend ActiveSupport::Concern
    included do
      before_save :persist_od_content
    end
    
    def compound?
      od_content.length > 0
    end

    def od_content
      @od_content ||= descMetadata.od_content.first || OregonDigital::RDF::List.from_uri(::RDF::Node.new, resource)
      persist_od_content
      @od_content
    end

    # Hacky statement iterator to clear all statements related to the
    # od_content list
    def clear_od_content
      return if @od_content.nil? || @od_content.to_a.empty?

      statements_to_delete = resource.statements.select do |s|
        s.predicate == ::RDF::URI('http://opaquenamespace.org/ns/contents')
      end

      while statement = statements_to_delete.pop
        statements_to_delete += resource.statements.select {|s| s.subject == statement.object}
        resource.send(:delete_statement, statement)
      end

      # Do *not* call `@od_content.clear` here!  For some reason, that causes
      # `resource.statements` to repopulate with orphaned data
      @od_content = nil
    end

    def persist_od_content
      descMetadata.od_content = [@od_content] if @od_content && descMetadata.od_content.first.nil? && @od_content.to_a.length > 0
    end

    def compound_parent
      @compound_parent ||= ActiveFedora::Base.where(Solrizer.solr_name("desc_metadata__od_content_references", :symbol).to_sym => resource.rdf_subject.to_s).first.try(:adapt_to_cmodel)
    end

    def compounded?
      compound_parent.present?
    end

  end
end
