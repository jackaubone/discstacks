class ListsController < ApplicationController

  before_action :authenticate_user

  def index
    @lists = List.all

    render template: "lists/index"
  end

  def show
    @list = List.find_by(id: params[:id])

    render template: "lists/show"
  end

  def create
    list = List.new(
      user_id: current_user.id,
      list_title: params[:list_title],
      list_desc: params[:list_desc],
      list_image: params[:list_image]
    )

    if list.save
      render json: {message: "List created"}, status: :created
    else
      render json: {errors: list.errors.full_messages}, status: :bad_request
    end
  end

  def update
    list = List.find_by(id: params[:id])
    
    list.list_title = params[:list_title] || list.list_title
    list.list_desc = params[:list_desc] || list.list_desc
    list.list_image = params["list_image"] || list.list_image

    if list.save
      render json: {message: "List updated"}
    else
      render json: {errors: list.errors.full_messages}, status: :bad_request
    end
  end

  def destroy
    list = List.find_by(id: params[:id])
    list.destroy

    render json: {message: "List destroyed"}
  end


end
