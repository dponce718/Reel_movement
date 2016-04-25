class ApplicationController < ActionController::Base
	#before_action :configure_devise_permitted_parameters, if: :devise_controller?
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
   before_action :configure_permitted_parameters, if: :devise_controller?
    

	

private


def  no_assessment!
  if current_user.assessment == nil
    flash[:notice] = "Don't forget to complete your assessment"
    redirect_to "/subscriptions"
    end  
end

def forgot_payment!
  if current_user.subscribed == false
    flash[:notice] = "Don't forget your payment information"
    redirect_to "/stripe"
  end
end

def forgot_subscription!
  if current_user.subscription == nil
    flash[:notice] = "Don't forget to accept our terms and policies"
    redirect_to "/forgot_subscription"
  end
end





protected

 # my custom fields are :name, :suscription
  def configure_permitted_parameters
    devise_parameter_sanitizer.for(:sign_up) do |u|
      u.permit(:name,
        :email, :password, :password_confirmation)
    end
    devise_parameter_sanitizer.for(:account_update) do |u|
      u.permit(:name,
        :email, :password, :password_confirmation, :current_password)
    end
  end

  def after_sign_in_path_for(resource)
  profile_path
end

def authenticate_active_admin_user!
   authenticate_user!
   unless current_user.role?(:admin)
      flash[:alert] = "You are not authorized to access this resource!"
      redirect_to root_path
   end
end


  
end
