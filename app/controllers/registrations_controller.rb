class RegistrationsController < Devise::RegistrationsController
 respond_to :json, :html, :js,

  def account_update_params
    if params[@devise_mapping.name][:password_confirmation].blank?
      params[@devise_mapping.name].delete(:password)
      params[@devise_mapping.name].delete(:password_confirmation)
    end
 

 end
end