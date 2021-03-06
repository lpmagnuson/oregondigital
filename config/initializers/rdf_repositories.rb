def configure_repositories
  ActiveFedora::Rdf::Repositories.clear_repositories!
  if Rails.env.test?
    ActiveFedora::Rdf::Repositories.add_repository :default, RDF::Repository.new
    ActiveFedora::Rdf::Repositories.add_repository :vocabs, RDF::Repository.new
  else
    ActiveFedora::Rdf::Repositories.add_repository :default, RDF::Mongo::Repository.new(:host => ENV['MONGODB_HOST'] || "localhost", :port => ENV["MONGODB_PORT"] || 27017)
    ActiveFedora::Rdf::Repositories.add_repository :vocabs, RDF::Mongo::Repository.new(:host => ENV['MONGODB_HOST'] || "localhost", :port => ENV["MONGODB_PORT"] || 27017, :collection => 'vocabs')
  end
end
configure_repositories
Rails.application.config.to_prepare do
  configure_repositories
end
