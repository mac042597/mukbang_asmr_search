class UsersController < ApplicationController

  def new
    @user = User.new
  end

def create
    @user = User.new(user_params)

    if @user.save
        redirect_to login_path, success: "新規登録に成功しました"
    else
        flash.now[:danger] = "ユーザー登録できませんでした"
        render :new
    end
end

private
  def set_user
    @user = User.find(params[:id])
  end

  def user_params
      params.require(:user).permit(:email, :name, :password, :password_confirmation)
  end
end
