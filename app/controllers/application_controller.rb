class ApplicationController < ActionController::Base
   before_action :configure_permitted_parameters, if: :devise_controller?
   protect_from_forgery with: :exception

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:nick_name, :email, :password])
    devise_parameter_sanitizer.permit(:sign_in,keys:[:email])
    devise_parameter_sanitizer.permit(:account_update, keys: [:nick_name, :email, :password,])
  end

  protected

  def after_sign_in_path_for(resource)
   user_path(resource)
  end

  def after_sign_up_path_for(resource)
   user_path(resource)
  end

  def after_sign_out_path_for(resource)
   root_path
  end

  def after_update_path_for(resource)
   user_path(current_user)
  end
end

