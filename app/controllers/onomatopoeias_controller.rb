class OnomatopoeiasController < ApplicationController
  def index
    @onomatopoeias = Onomatopoeia.all
  end

end
