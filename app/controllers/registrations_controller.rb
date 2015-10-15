class RegistrationsController < Devise::RegistrationsController
  # def new
  #   super
  # end

   def create
     super
     current_user.update(suscription: false)
   end
end
