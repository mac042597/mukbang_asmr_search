class ProfilesController < ApplicationController
  before_action :require_login, only: %i[show edit update]
  before_action :set_user, only: %i[show edit update]


  def show
    onomatopoeia_ids = @user.onomatopoeias.pluck(:id)
    @each_onomatopoeias = Onomatopoeia.where(id: onomatopoeia_ids)

    food_ids = @user.foods.pluck(:id)
    @each_foods = Food.includes(:category).where(id: food_ids)
    #binding.pry
  end

  def edit
  end

  def update
    if @user.update(user_params)
      redirect_to profiles_path, success: "登録情報を更新しました"
    else
      flash.now[:danger] = "登録情報を更新できませんでした"
      render :edit
    end
  end

  private

  #ここで現在のログインユーザーの情報を持たせている。
  def set_user
      @user = User.find(current_user.id)
  end

  def user_params
    params.require(:user).permit(:email, :name)
  end
end
