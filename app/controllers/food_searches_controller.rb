class FoodSearchesController < ApplicationController
  include Youtube

  def japanese_movies
    japanese_notation = params[:japanese_notation]
    @keyword = japanese_notation + " " + "モッパン"
    #binding.pry
    @japanese_movies = search_movie(@keyword)
  end

  def korean_movies
    korean_notation = params[:korean_notation]
    #binding.pry
    @keyword = korean_notation + " " + "먹방"
    @korean_movies = search_movie(@keyword)
  end
end
