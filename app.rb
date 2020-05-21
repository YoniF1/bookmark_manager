# in app.rb

require 'sinatra/base'
require './lib/bookmark.rb'

class BookmarkManager < Sinatra::Base
  get '/' do
    'Hello World'
  end

  get '/bookmarks' do
    @bookmarks = Bookmark.all
    erb :index
  end

  get '/add' do
    erb :play
  end

  post '/add_bookmark' do
    Bookmark.add(url: params[:url], title: params[:title])
    redirect '/bookmarks'
  end

  run! if app_file == $0
end
