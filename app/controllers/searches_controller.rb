class SearchesController < ApplicationController
  include Youtube

  def index
    search_word = params[:lang]
    #binding.pry
    if search_word.match(/\A[ぁ-んァ-ヶー－]+\z/)
      @keyword = search_word + " " + "モッパン"
    else
      @keyword = search_word + " " + "먹방"
    end
    @movies = search_movie(@keyword)
  end
end
