class UsersController < ApplicationController
  before_action :set_user, only: %i[destroy]

  def new
    @user = User.new
  end

def create
    @user = User.new(user_params)

    if @user.save
        redirect_to login_path, notice: "新規登録に成功しました"
    else
        flash.now[:alert] = "ユーザー登録できませんでした"
        render :new
    end
end

def destroy
  binding.pry
  @user.destroy!
  redirect_to root_path, notice: "退会しました"
end

private
  def set_user
    @user = User.find(params[:id])
  end

  def user_params
      params.require(:user).permit(:email, :name, :password, :password_confirmation)
  end
end
