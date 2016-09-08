class StudiosController < ApplicationController

  get "/studios" do
    erb :"studios/index"
  end

  get "/studios/new" do
    @movies = Movie.all
    @studios = Studio.all
    erb :"/studios/new"
  end

  post "/studios" do
    @studio = Studio.find_or_create_by(name: params[:studio][:name])
    # binding.pry
    @studio.movies = Movie.find_or_create_by(name: params[:movie][:name], description: params[:movie][:description])
    @studio.save
    erb :"/studios/show", locals: {message: "Successfully created Studio."}

  end

  get "/studios/:id" do
    @studio = Studio.find(params[:id])
    erb :"studios/show"
  end

  get "/studios/:id/edit" do
    @studio = Studio.find(params[:id])
    erb :"/studios/edit"
  end

  post "/studios/:id/delete" do
    @studio = Studio.find(params[:id])
    @studio.destroy
    redirect to("/movies")
  end
end
