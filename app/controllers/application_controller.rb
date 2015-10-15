class ApplicationController < ActionController::Base
	before_action :configure_permitted_parameters, if: :devise_controller?
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

   protected

 def configure_permitted_parameters
    devise_parameter_sanitizer.for(:sign_up) { |u| u.permit(:name, :email, :password, :password_confirmation, :remember_me, :subscriptions) }
    devise_parameter_sanitizer.for(:account_update) { |u| u.permit(:name, :email, :password, :password_confirmation, :remember_me, :subscriptions) }
  end


  def after_sign_in_path_for(resource)
  "/subscriptions/new"
end
	
	def suscribed_user!
  		unless current_user.suscription?
        flash[:danger] = "Please suscribe"
       	redirect_to "/subscriptions/new"
    	end
	end
end
