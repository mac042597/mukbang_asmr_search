class SearchesController < ApplicationController
  include Youtube

  def index
    if params[:group] == "1"
      OnomatopoeiaClick.create(onomatopoeia_id: params[:id])
    else
      FoodClick.create(food_id: params[:id])
    end

    search_word = params[:lang]
    if search_word.match(/\A[ぁ-んァ-ヶー－]+\z/)
      @keyword = search_word + " " + "モッパン"
    else
      @keyword = search_word + " " + "먹방"
    end
    @movies = search_movie(@keyword)
  end
end
