class FilmsController < ApplicationController

  def index
  	@films = Film.all
  	render :index
  end

  def new
  	@film = Film.new
	render :new
  end

  def create
  	@film = Film.new(
  	  title: params["title"],
  	  genre: params["genre"],
  	  year: params["year"],
  	  review: params["review"])

  	if @film.save
  	  redirect_to films_show_path(@film)
  	else
  	  render :new
  	end
  end

  def edit
  	film = Film.find(params["id"])
  	render :edit, locals: { film: film }
  end

  def update
  	film = Film.find(params["id"])
  	film.update(
  	  title: params["title"],
  	  genre: params["genre"],
  	  year: params["year"],
  	  review: params["review"])

  	redirect_to root_path
  end

  def show
  	@film = Film.find(params["id"])
  	render :show
  end

  def destroy
  	film = Film.find(params["id"])
  	film.destroy
  	flash[:notice] = "FILM DESTROYED"
  	redirect_to :root
  end
end
