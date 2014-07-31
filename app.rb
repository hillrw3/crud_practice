require 'sinatra'
require 'gschool_database_connection'
require 'rack-flash'
require 'active_record'
require './lib/tree'

class App < Sinatra::Application
  enable :sessions
  use Rack::Flash

  def initialize
    super
    @database_connection = GschoolDatabaseConnection::DatabaseConnection.establish(ENV["RACK_ENV"])
  end

  get '/' do
    erb :root
  end

  get '/trees' do
    @trees = Tree.all
    erb :trees
  end

  get '/trees/new' do
    erb :new_tree
  end

  post '/create_tree' do
    Tree.create(name: params[:name])
    redirect '/trees'
  end

end