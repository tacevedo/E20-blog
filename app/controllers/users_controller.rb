class UsersController < ApplicationController
  load_and_authorize_resource

  def index

  end
  def show
    # @user = User.find_by_username(params[:id])
  end
end
