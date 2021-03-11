class UsersController < ApplicationController
    # before_action :set_product, only: %i[ show edit update destroy ]
    
    # POST /products or /products.json
    def signup
      @user = User.new(user_params)
  
      respond_to do |format|
        if @user.save
          format.html { redirect_to @user, notice: "Product was successfully created." }
          format.json { render :show, status: :created, location: @user }
        else
          format.html { render :new, status: :unprocessable_entity }
          format.json { render json: @user.errors, status: :unprocessable_entity }
        end
      end
    end

    # DELETE /products/1 or /products/1.json
# def destroy
#   @user.destroy
#   respond_to do |format|
#     format.html { redirect_to products_url, notice: "User was successfully destroyed." }
#     format.json { head :no_content }
#   end
# end
  
    private
      # Use callbacks to share common setup or constraints between actions.
      def set_user
        @user = User.find(params[:id])
      end
  
      # Only allow a list of trusted parameters through.
      def user_params
        params.require(:user).permit(:username, :email, :password, :password_confirmation,)
      end
  end
  