class RegistrationsController < Devise::RegistrationsController
    # before_action :set_product, only: %i[ show edit update destroy ]
    
  private

  def sign_up_params
    params.require(:user).permit(:username, :email, :password, :password_confirmation,:become_to)
  end

end
