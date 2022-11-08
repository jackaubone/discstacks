class ItemsController < ApplicationController
  def index
    item = Item.all

    render json: item.as_json
  end

  def show
    item = Item.find_by(id: params[:id])

    render json: item.as_json
  end

  def create
    item = Item.new(
      name: params[:name],
      artist: params[:artist],
      release_date: params[:release_date],
      label: params[:label],
      image_url: params[:image_url],
      description: params[:description]
    )

    if item.save
      render json: {message: "Created successfully"}, status: :created
    else
      render json: {errors: item.errors.full_messages}, statust: :bad_request
    end
  end

  def update
    item = Item.find_by(id: params[:id])

    item.name = params[:name] || item.name
    item.artist = params[:artist] || item.artist
    item.release_date = params[:release_date] || item.release_date
    item.label = params[:label] || item.label
    item.image_url = params[:image_url] || item.image_url
    item.description = params[:description] || item.description

    if item.save
      render json: {message: "Updated successfully"}, status: :updated
    else
      render json: {errors: item.errors.full_messages}, status: :bad_request
    end
  end

  def destroy 
    item = Item.find_by(id: params[:id])
    item.destroy

    render json: {message: "Destroyed"}
  end
end
