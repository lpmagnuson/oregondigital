module OregonDigital::RDF
  ##
  # Adds add support for controlled vocabularies and
  # QuestioningAuthority to RdfResource classes.
  module Controlled

    def self.included(klass)
      klass.extend ClassMethods
    end

    ##
    # Override set_subject! to find terms when (and only when) they
    # exist in the vocabulary
    def set_subject!(uri_or_str)
      vocab_matches = []
      self.class.vocabularies.each do |vocab, config|
        if uri_or_str.start_with? config[:prefix]
          # @TODO: is it good to need a full URI for a non-strict vocab?
          return super if config[:strict] == false
          uri_or_str = uri_or_str.to_s.gsub(config[:prefix], '')
          if config[:class].respond_to? uri_or_str
            uri_or_str = config[:class].send(uri_or_str)
            return super
          end
        else
          # this only matches if the term is explictly defined
          # @TODO: what about the possibility of terms like "entries" or
          # "map" which are methods but not defined properties?  does
          # this need to be patched in RDF::Vocabulary or am I missing
          # something?
          vocab_matches << config[:class].send(uri_or_str) if config[:class].respond_to? uri_or_str
        end
      end
      raise ControlledVocabularyError, "Term not in controlled vocabularies: #{uri_or_str}" if vocab_matches.empty?
      raise ControlledVocabularyError, "Term is ambiguous, could not choose a URI : #{uri_or_str}" if vocab_matches.length > 1
      uri_or_str = vocab_matches.first
      return super if self.class.uses_vocab_prefix?(uri_or_str) and not uri_or_str.kind_of? RDF::Node
    end

    ##
    #
    module ClassMethods
      def use_vocabulary(name, opts={})
        raise ControlledVocabularyError, "Vocabulary undefined: #{name.to_s.upcase}" unless RDF_VOCABS.include? name
        opts[:class] = name_to_class(name) unless opts.include? :class
        opts.merge! RDF_VOCABS[name.to_sym]
        vocabularies[name] = opts
      end

      def vocabularies
        @vocabularies ||= {}.with_indifferent_access
      end

      def uses_vocab_prefix?(str)
        vocabularies.each do |vocab, config|
          return true if str.start_with? config[:prefix]
        end
        false
      end

      private

      def name_to_class(name)
        "OregonDigital::Vocabularies::#{name.upcase.to_s}".constantize
      end
    end

    class ControlledVocabularyError < Exception; end
  end
end
