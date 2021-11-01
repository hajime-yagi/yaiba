class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?
  before_action :detect_device
  private
    def detect_device
      case request.user_agent
        when /iPad/
            request.variant = :mobile
        when /iPod/
            request.variant = :mobile
        when /iPhone/
            request.variant = :mobile
        when /Android/
            request.variant = :mobile
      end
    end
  private
  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:username])
  end
end
