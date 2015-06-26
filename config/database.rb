configure do
  # Log queries to STDOUT in development
  if Sinatra::Application.development?
    ActiveRecord::Base.logger = Logger.new(STDOUT)
  end

  set :database, {
    adapter: "postgresql",
    database: "d1sn01s5ri49fu",
    host: "ec2-54-227-249-165.compute-1.amazonaws.com",
    user: "zumbqxstegddgc",
    port: 5432,
    password: "8gplBMC7fCJv7LQaruTOo-3OvP"

    }
  # Load all models from app/models, using autoload instead of require
  # See http://www.rubyinside.com/ruby-techniques-revealed-autoload-1652.html
  Dir[APP_ROOT.join('app', 'models', '*.rb')].each do |model_file|
    filename = File.basename(model_file).gsub('.rb', '')
    autoload ActiveSupport::Inflector.camelize(filename), model_file
  end

end
