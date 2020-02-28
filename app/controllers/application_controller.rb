
require_relative '../../config/environment'

class ApplicationController < Sinatra::Base

  configure() {set :public_folder, 'public'; set :views, 'app/views'}

  get('/articles/new') {@article = Article.new; erb :index}
end
