class ApplicationController < ActionController::Base
	#before_action :configure_devise_permitted_parameters, if: :devise_controller?
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
   before_action :configure_permitted_parameters, if: :devise_controller?
    



  def after_sign_in_path_for(resource)
  "/subscriptions/new"
end
	
	def suscribed_user!
  		unless current_user.suscription == false
        flash[:danger] = "Please suscribe!"
       	redirect_to "/subscriptions/new"
    	end
	end



protected

 # my custom fields are :name, :suscription
  def configure_permitted_parameters
    devise_parameter_sanitizer.for(:sign_up) do |u|
      u.permit(:name, :suscription,
        :email, :password, :password_confirmation)
    end
    devise_parameter_sanitizer.for(:account_update) do |u|
      u.permit(:name,
        :email, :password, :password_confirmation, :current_password)
    end
  end

  
end
