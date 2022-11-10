class GenresController < ApplicationController
  before_action :authenticate_user

  def index
    genre = Genre.all

    render json: genre.as_json
  end

  def create
    genre = Genre.new(
      name: params[:name]
    )

    if genre.save
      render json: {message: "Created successfully"}, status: :created
    else
      render json: {errors: genre.errors.full_messages}, status: :bad_request
    end
  end

  def destroy
    genre = Genre.find_by(id: params[:id])
    genre.destroy

    render json: {message: "Destroyed."}
  end

end
