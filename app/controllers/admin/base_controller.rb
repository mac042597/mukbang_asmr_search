class Admin::BaseController < ApplicationController
  #ログインしてない時not_authenticatedメソッドを発火する
  before_action :require_login
  before_action :check_admin
  # layout宣言
  layout 'admin/layouts/application'

  private

  # ログインしていないユーザーは管理者用のログインページへリダイレクトされる
  def not_authenticated
    redirect_to admin_login_path, warning: "ログインしてください"
  end

  # 管理者権限を持っているか確認する
  # 管理者権限がないユーザーを弾く
  def check_admin
    redirect_to root_path, warning: "管理者権限を持っていません" unless current_user.admin?
    #binding.pry
  end
end
