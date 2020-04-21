class GenresController < ApplicationController
  get '/genres' do
    @genres = Genre.all
    erb :"/genres/index"
  end
  
  # get '/genres/new' do
  #   erb :"genres/new"
  # end
  
  get '/genres/:id' do
    @genre = Genre.find(params[:id])
    
    erb :"/genres/show"
  end
  
  get '/genres/:id/edit' do
    @genre = Genre.find(params[:id])
    
    erb :"genres/edit"
  end
end