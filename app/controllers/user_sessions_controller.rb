class UserSessionsController < ApplicationController
  
  def new
    @user = User.new
  end

  def create
    @user = login(params[:email], params[:password])
    if @user
      redirect_back_or_to root_path, success: "ログインしました"
    else
      flash.now[:alert] = 'ログインに失敗しました'
      render :new
    end
    #binding.pry
  end

  def destroy
    logout
    redirect_to root_path, success: "ログアウトしました"
  end
end
