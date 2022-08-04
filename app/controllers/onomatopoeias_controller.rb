class OnomatopoeiasController < ApplicationController
  # GET /onomatopoeias or /onomatopoeias.json
  def index
    @onomatopoeias = Onomatopoeia.all
  end

end
