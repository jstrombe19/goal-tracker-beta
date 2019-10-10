class Api::V1::UsersController < ApplicationController

  skip_before_action :authenticate_request, only: [:create]
  before_action :find_user, only: [:show, :edit, :update, :destroy]

  def index
  end

  def show
    render json: @current_user
  end

  def create
    @user = User.new
    @user.name = params["name"]
    @user.email = params["email"]
    @user.phone = params["phone"]
    @user.password = params["password"]
    @user.password_confirmation = params["password_confirmation"]
    @user.save
  end

  def edit
    render json: @current_user
  end

  def update
  end

  def destroy
    User.destroy(@current_user.id)
  end

  private

  def find_user
    @current_user = User.find(params[:id])
  end

  def user_params
    params.require(:user).permit(
      :id,
      :name,
      :email,
      :phone,
      :password_digest
    )
  end

end
