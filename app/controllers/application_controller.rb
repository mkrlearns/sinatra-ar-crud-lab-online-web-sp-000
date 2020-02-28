
require_relative '../../config/environment'

class ApplicationController < Sinatra::Base

  configure() {set :public_folder, 'public'; set :views, 'app/views'}

  get('/') {erb :index}
  get('/articles') {@articles = Article.all; erb :index}
  get('/articles/new') {@article = Article.new; erb :new}
  get('/articles/:id') {@article = Article.find(params[:id]); erb :show}

  post('/articles') {@article = Article.create(params); redirect "/articles/#{@article.id}"}
end
