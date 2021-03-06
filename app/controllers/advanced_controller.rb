class AdvancedController < BlacklightAdvancedSearch::AdvancedController
  copy_blacklight_config_from(CatalogController)
  def get_advanced_search_facets
    adv_keys = blacklight_config.search_fields.keys.map(&:to_sym)
    trimmed_params = params.reject do |k,v|
      adv_keys.include?(k.to_sym)
    end
    trimmed_params.delete(:f_inclusive)
    search_context_params = solr_search_params(trimmed_params)
    search_context_params.delete(:q)
    search_context_params.delete("q")
    search_context_params.delete_if do |k, v|
      k = k.to_s
      (["facet.limit", "facet.sort", "f", "facets", "facet.fields", "per_page"].include?(k) ||                
       k =~ /f\..+\.facet\.limit/ ||
       k =~ /f\..+\.facet\.sort/
      ) 
    end

    input = HashWithIndifferentAccess.new
    input.merge!(search_context_params)

    input[:per_page] = 0

    input[:qt] = blacklight_config.advanced_search[:qt] if blacklight_config.advanced_search[:qt] 

    input.merge!( blacklight_config.advanced_search[:form_solr_parameters] ) if blacklight_config.advanced_search[:form_solr_parameters]
    input[:q] ||= '{!lucene}*:*'

    find(nil, input.to_hash)
  end
end
