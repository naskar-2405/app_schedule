class ApplicationController < ActionController::Base
  # Only allow modern browsers supporting webp images, web push, badges, import maps, CSS nesting, and CSS :has.
  allow_browser versions: :modern
  before_action :configure_permitted_parameters, if: :devise_controller?


  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:loginID, :email])
  end

  private

  
  def after_sign_out_path_for(resource_or_scope)
    new_manager_session_path # ログアウト後にログインページにリダイレクトする場合
    # または、任意のパスを指定
    # root_path
  end
end
