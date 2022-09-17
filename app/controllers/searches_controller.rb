class SearchesController < ApplicationController
  include Youtube

  def index
    if params[:japanese_notation]
      japanese_notation = params[:japanese_notation]
      @keyword = japanese_notation + " " + "モッパン"
      @movies = search_movie(@keyword)
    elsif params[:korean_notation]
      korean_notation = params[:korean_notation]
      @keyword = korean_notation + " " + "먹방"
      @movies = search_movie(@keyword)
    else
      render "onomatopoeias/index"
    end
  end
end
