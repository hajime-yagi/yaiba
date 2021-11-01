class ApplicationRecord < ActiveRecord::Base
  self.abstract_class = true
  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.for(:sign_up) { |u| u.permit(:subdomain, :username, :email, :password, :password_confirmation) }
    devise_parameter_sanitizer.for(:sign_in) { |u| u.permit(:subdomain, :username, :email, :password, :remember_me) }
  end
end
