class Admin::OnomatopoeiasController < ApplicationController

  before_action :set_nomatopoeia, only: %i[show edit update destroy]

  def index
    @onomatopoeias = Onomatopoeia.all.order(created_at: :desc)
  end

  def show
  end

  def new
    @onomatopoeia = Onomatopoeia.new
  end

  def create
    @onomatopoeia = Onomatopoeia.new(onomatopoeia_params)

    if @onomatopoeia.save
      redirect_to admin_onomatopoeias_path, success: "オノマトペを登録しました"
    else
      flash.now[:danger] = "登録に失敗しました"
      render :new
    end
  end


  def edit
  end
  
  def update
    if  @onomatopoeia.update(onomatopoeia_params)
      redirect_to admin_onomatopoeia_path(@onomatopoeia), success: "オノマトペを更新しました"
    else
      flash.now[:danger] = "登録に失敗しました"
      render :edit
    end
  end

  def destroy
    @onomatopoeia.destroy!
    redirect_to admin_onomatopoeias_path, success: "オノマトペを削除しました"
  end

  private

  def set_nomatopoeia
    @onomatopoeia = Onomatopoeia.find(params[:id])
  end

  def onomatopoeia_params
    params.require(:onomatopoeia).permit(:japanese_notation, :korean_notation)
  end
end
