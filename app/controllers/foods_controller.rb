class FoodsController < ApplicationController
  def index
    @food_lanks = Food.find(FoodClick.where(created_at: Time.current.all_month).limit(3).group(:food_id).order('count(food_id) desc').pluck(:food_id))
    @foods = Food.all
  end
end
