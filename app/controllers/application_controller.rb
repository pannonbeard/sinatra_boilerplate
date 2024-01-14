class ApplicationController < Sinatra::Base
  helpers ApplicationHelper

  # set public folder for static files
  set :public_folder, File.expand_path('../../public', __FILE__)

  # set folder for templates to ../views, but make the path absolute
  set :views, File.expand_path('../../views', __FILE__)

  # don't enable logging and reloading when running tests
  configure :production, :development do
    register Sinatra::Reloader
    enable :logging
  end

  # will be used to display 404 error pages
  not_found do
    title 'Not Found!'
    erb :not_found
  end

  def root
    self.class.to_s.downcase.gsub('controller', '')
  end

  get '/' do
    index

    erb "/#{root}/index".to_sym
  end

  def index; end

  get '/new' do
    erb "/#{root}/new".to_sym
  end

  def new; end

  post '/' do
    create
  end

  def create; end

  def edit; end

  get '/:id/edit' do
    edit
    erb "/#{root}/edit".to_sym
  end

  patch '/:id' do
    update
  end

  def update; end

  delete '/:id' do
    destroy
  end

  def destroy; end
end