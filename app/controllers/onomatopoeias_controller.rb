class OnomatopoeiasController < ApplicationController

  before_action :set_onomatopoeia, only: %i[edit update destroy]

  def index
    #binding.pry
    @onomatopoeia_lanks = Onomatopoeia.find(OnomatopoeiaClick.where(created_at: Time.current.all_month).limit(3).group(:onomatopoeia_id).order('count(onomatopoeia_id) desc').pluck(:onomatopoeia_id))
    @onomatopoeias = Onomatopoeia.all
    user_ids =  User.where(role: "general").ids
    @user_onomatopoeias = Onomatopoeia.find_by(user_id: user_ids)
    @onomatopoeia = Onomatopoeia.new
  end

  def create
    @onomatopoeia = current_user.onomatopoeias.build(onomatopoeia_params)
    
    if @onomatopoeia.save
      redirect_to onomatopoeias_path, success: "オノマトペを登録しました"
    else
      flash.now[:danger] = "オノマトペの登録に失敗しました"
      render :index
    end
  end

  def edit
    #binding.pry
  end

  def update
    if @onomatopoeia.update(onomatopoeia_params)
      redirect_to profiles_path, success: "オノマトペを更新しました"
    else
      flash.now[:danger] = "オノマトペの更新に失敗しました"
      render :edit
    end
  end

  def destroy
    binding.pry
    @onomatopoeia.destroy!
    redirect_to profiles_path, success: "オノマトペを削除しました"
  end

  private

  def set_onomatopoeia

    @onomatopoeia = Onomatopoeia.find(params[:id])
  end

  def onomatopoeia_params
    params.require(:onomatopoeia).permit(:japanese_notation, :korean_notation)
  end
end
