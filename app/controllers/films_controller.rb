class FilmsController < ApplicationController
  def index
    @films = Film.all
  end

  def edit
    @film = Film.find(params[:id])
  end

  def show
    @film = Film.find(params[:id])
  end
  
  def new
      @film = Film.new
    end
  
    def create
      @film = Film.new(film_params)
      if @film.save
        redirect_to root_path, notice: 'Film was successfully created.'
      else
        render :new
      end
    end

    def update
      @film = Film.find(params[:id])
      if @film.update(film_params)
        redirect_to films_path, notice: 'Film was successfully updated.'
      else
        render :edit
      end
    end

    def destroy
      @film = Film.find(params[:id])
      @film.destroy
      redirect_to films_path, notice: 'Film was successfully deleted.'
    end
  
    private
  
    def film_params
      params.require(:film).permit(:title, :description, :duration, :director, :year_of_creation, :genres)
    end
  end