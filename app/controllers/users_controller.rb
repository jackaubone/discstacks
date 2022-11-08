class UsersController < ApplicationController

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
    user = User.all

    render json: user.as_json
  end

  def show
  user = User.find_by(id: params[:id])

  render json: user.as_json
  end

end
