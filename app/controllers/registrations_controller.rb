class RegistrationsController < Devise::RegistrationsController
  before_action :cancel_subscription, only: [:destroy]

  def create
    build_resource(sign_up_params)
    plan = Plan.find_by!(id: params[:user][:plan_id].to_i)
    resource.role = User.roles[plan.stripe_id] unless resource.admin?
    resource.save
    yield resource if block_given?
    if resource.persisted?
      if resource.active_for_authentication?
        set_flash_message :notice, :signed_up if is_flashing_format?
        sign_up(resource_name, resource)
        subscribe
      else
        set_flash_message :notice, :"signed_up_but_#{resource.inactive_message}" if is_flashing_format?
        expire_data_after_sign_in!
        subscribe
      end
    else
      clean_up_passwords resource
      render json:
        {error: resource.errors.full_messages.to_sentence},
        status: 400
    end
  end

  private

  def sign_up_params
    params.require(:user).permit(:email, :name,
    :password, :password_confirmation, :plan_id)
  end



end
