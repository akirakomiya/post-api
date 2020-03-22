class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?
  protect_from_forgery with: :exception
  before_action :authenticate_user!
 protected
 def after_sign_in_path_for(resource)
      post_images_path
 end

    #sign out後のredirect先変更
 def after_sign_out_path_for(resource)
      new_user_session_path
 end
 def configure_permitted_parameters
   devise_parameter_sanitizer.permit(:sign_up, keys: [:name, :email])
 end
end
