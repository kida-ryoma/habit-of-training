class ApplicationController < ActionController::Base
  before_action :authenticate_user!

  def after_sign_in_path_for(resource)
    new_training_menu_path 
  end

  # def after_sign_out_path_for(resource)
  #   new_user_session_path # ログアウト後に遷移するpathを設定
  # end
end
