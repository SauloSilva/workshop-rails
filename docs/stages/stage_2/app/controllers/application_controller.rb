class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_filter :configure_permitted_parameters, if: :devise_controller?

  protected
  def configure_permitted_parameters
    devise_parameter_sanitizer.for(:sign_up) << [:name, :birthdate]
    devise_parameter_sanitizer.for(:sign_in) << [:name, :birthdate]
    devise_parameter_sanitizer.for(:account_update) << [:name, :birthdate]
  end
end
