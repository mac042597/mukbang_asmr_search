class FoodsController < ApplicationController

  before_action :set_food, only: %i[edit update destroy]

  def index
    @food_lanks = Food.find(FoodClick.where(created_at: Time.current.all_month).limit(3).group(:food_id).order('count(food_id) desc').pluck(:food_id))
    @foods = Food.all
    user_ids =  User.where(role: "general").ids
    @user_foods = Food.find_by(user_id: user_ids)
    @food = Food.new
  end

  def create
    #binding.pry
    @food = current_user.foods.build(food_params)
    
    if @food.save
      redirect_to foods_path, success: "食べ物を登録しました"
    else
      flash.now[:danger] = "食べ物の登録に失敗しました"
      render :index
    end
  end

  def edit
  end
  
  def update
    if @food.update(food_params)
      redirect_to profiles_path, success: "食べ物を更新しました"
    else
      flash.now[:danger] = "食べ物の登録に失敗しました"
      render :edit
    end
  end

  def destroy
    @food.destroy!
    redirect_to profiles_path, success: "食べ物を削除しました"
  end

  private

  def set_food
    @food = Food.find(params[:id])
  end

  def food_params
    params.require(:food).permit(:japanese_notation, :korean_notation, :category_id)
  end
end
