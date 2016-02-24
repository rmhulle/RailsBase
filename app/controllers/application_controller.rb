class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  layout :layout_by_resource
  before_action :configure_permitted_parameters, if: :devise_controller?

  add_flash_types :success, :warning, :danger, :info

protected

	def configure_permitted_parameters
		devise_parameter_sanitizer.for(:sign_up) { |u| u.permit(:email, :password, :password_confirmation, :name, :functional_id) }
	end

def layout_by_resource
  	if devise_controller? && resource_name == :user && action_name == "new"
    	"pure"
  	else
    	"application"
 	end
end


end
