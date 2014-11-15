module OregonDigital
  module Catalog
    module Defaults
      extend ActiveSupport::Concern
      included do
        configure_blacklight do |config|
          config.default_solr_params = {
              :qt => 'search',
              :rows => 10,
              :hl => true,
              :"hl.fl" => "*"
          }
        end
      end
    end
  end
end
