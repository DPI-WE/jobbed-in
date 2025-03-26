class ApplicationController < ActionController::Base
  skip_forgery_protection

  # TODO: move to deviseable
  before_action :configure_permitted_parameters, if: :devise_controller?

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:account_update, keys: [:password, :password_confirmation, :current_password, :avatar])
  end
end
