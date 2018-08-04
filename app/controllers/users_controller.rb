class UsersController < ApplicationController
  load_and_authorize_resource

  def index

  end
  def show
    # @user = User.find_by_username(params[:id])
  end

  def edit
       @user = User.find(params[:id])
  end

  def update
    # @user.update(user_params)
    # redirect_to users_path
    @user = User.find(params[:id])


     if @user.update(user_params)
       flash[:notice] = "Successfully updated User."
       redirect_to users_path
     else
       redirect_to users_path
     end
  end
  def destroy
    # @user.destroy
    # redirect_to users_path
    @user = User.find(params[:id])
    if @user.destroy
      flash[:notice] = "Successfully deleted User."
      redirect_to users_path
    end
  end
  private

  def user_params
    params.require(:user).permit(:role)
  end
end
