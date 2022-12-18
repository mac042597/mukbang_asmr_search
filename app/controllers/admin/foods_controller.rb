class Admin::FoodsController < Admin::BaseController

  before_action :set_food, only: %i[show edit update destroy]

  def index
    @foods = Food.includes(:category).all.order(created_at: :desc)
    #binding.pry
  end

  def show
    @food = Food.find(params[:id])
    @onomatopoeias = @food.onomatopoeias.find_by(params[:japanese_notation])
    #binding.pry
  end

  def new
    @food = Food.new
  end

  def create
    @food = current_user.foods.build(food_params)

    if @food.save
      redirect_to admin_foods_path, success: "食べ物を登録しました"
    else
      flash.now[:danger] = "食べ物の登録に失敗しました"
      render :new
    end
  end

  def edit
  end
  
  def update
    if @food.update(food_params)
      redirect_to admin_food_path(@food), success: "食べ物を更新しました"
    else
      flash.now[:danger] = "食べ物の登録に失敗しました"
      render :edit
    end
  end

  def destroy
    @food.destroy!
    redirect_to admin_foods_path, success: "食べ物を削除しました"
  end

  private

  def set_food
    @food = Food.find(params[:id])
  end

  def food_params
    params.require(:food).permit(:japanese_notation, :korean_notation, :category_id, :onomatopoeia_ids)
  end
end
