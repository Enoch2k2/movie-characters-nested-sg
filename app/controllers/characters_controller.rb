class CharactersController < ApplicationController
  before_action :set_movie, only: [:new, :create, :show]
  before_action :set_character, only: [:show]

  def index
    # come in from a nested we will have a params[:movie_id]
    if params[:movie_id]
      set_movie
      @characters = @movie.characters
    else
      @characters = Character.all
    end
  end
  
  def new
    @character = @movie.characters.build
  end

  def create
    @character = @movie.characters.build(character_params)

    if @character.save
      redirect_to movie_characters_path(@movie)
    else
      render :new
    end
  end

  def show
  end
  
  private
    def set_movie
      @movie = Movie.find_by_id(params[:movie_id])
    end

    def set_character
      @character = Character.find_by_id(params[:id])
    end

    def character_params
      params.require(:character).permit(:name, :race, :gender)
    end
end
