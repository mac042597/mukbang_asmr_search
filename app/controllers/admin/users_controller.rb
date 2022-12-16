class Admin::UsersController < Admin::BaseController

  before_action :set_user, only: %i[show edit update destroy]

  def index
    @users = User.all.order(created_at: :desc)
  end

  def show
  end

  def edit
  end

  def update
    if @user.update(user_params)
      redirect_to admin_user_path(@user), success: "ユーザーを更新しました"
    else
      flash.now[:danger] = "ユーザーの更新に失敗しました"
      render :edit
    end
  end

  def destroy
    @user.destroy!
    redirect_to admin_users_path, success: "ユーザーを削除しました"
  end

  private

  def set_user
    @user = User.find(params[:id])
  end

  def user_params
    params.require(:user).permit(:email, :name, :last_name, :avatar, :avatar_cache)
  end
end
