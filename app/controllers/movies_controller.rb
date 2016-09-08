class MoviesController < ApplicationController

  get '/' do
    redirect to ("/movies")
  end

  get '/movies' do
    erb :"movies/index"
  end

  get '/movies/new' do
    @genres = Genre.all
    erb :"movies/new"
  end

  post '/movies' do
    @movie = Movie.find_or_create_by(name: params[:movie][:name], description: params[:movie][:description])
    @movie.studio = Studio.find_or_create_by(name: params[:studio][:name])
    @movie.genre_ids = params[:genres]
    @movie.save
    erb :"movies/new_movie", locals: {message: "Successfully created movie."}
  end

  get "/movies/:id" do
    @movie = Movie.find(params[:id])
    # binding.pry
    erb :"movies/show"
  end

  get "/movies/:id/edit" do
    @movie = Movie.find(params[:id])
    erb :"/movies/edit"
  end

  post "/movies/:id" do
    @movie = Movie.find(params[:id])
    @movie.update(params[:movie])
    @movie.studio = Studio.find_or_create_by(name: params[:studio][:name])
    @movie.save
    erb :"movies/new_movie", locals: {message: "Movie Successfully updated."}
  end

  post "/movies/:id/delete" do
    @movie = Movie.find(params[:id])
    @movie.destroy
    redirect to("/movies")
  end
end
