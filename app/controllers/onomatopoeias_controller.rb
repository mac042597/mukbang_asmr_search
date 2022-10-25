class OnomatopoeiasController < ApplicationController
  def index
    @onomatopoeia_lanks = Onomatopoeia.find(OnomatopoeiaClick.where(created_at: Time.current.all_month).limit(3).group(:onomatopoeia_id).order('count(onomatopoeia_id) desc').pluck(:onomatopoeia_id))
    @onomatopoeias = Onomatopoeia.all
  end
end
