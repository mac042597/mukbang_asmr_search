class Admin::CategoriesController < Admin::BaseController

  def new
    @category = Category.new
  end

  def create
    @category = Category.new(category_params)
    if @category.save
        redirect_to admin_categories_path, success: "カテゴリーを登録しました"
    else
        render :new
    end
  end

  def index
    @categories = Category.all
  end

  def destroy
    @category = Category.find(params[:id])
    @category.destroy!
    redirect_to admin_categories_path, success: "カテゴリーを削除しました"
  end

  private
  def category_params
    params.require(:category).permit(:name)
  end
end
