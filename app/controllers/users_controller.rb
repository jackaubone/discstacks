class UsersController < ApplicationController

  #before_action :authenticate_user

  def create
    user = User.new(
      name: params[:name],
      email: params[:email],
      password: params[:password],
      password_confirmation: params[:password_confirmation], image_url:
      params[:image_url]
    )
    if user.save
      render json: { message: "Signed up successfully" }, status: :created
    else
      render json: { errors: user.errors.full_messages }, status: :bad_request
    end
  end

  def index
    @users = User.all

    #render json: @users.as_json
    render template: "users/index"
  end

  def show
 
    @user = User.find_by(id: params[:id])
    if current_user == @user
      #render json: @user.as_json
      render template: "users/show"
    else
      render json: {errors: @user.errors.full_messages }, status: :unauthorized
    end
  end

end
