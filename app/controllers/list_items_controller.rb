class ListItemsController < ApplicationController

  def create
    list_item = ListItem.new(
      list_id: params[:list_id],
      item_id: params[:item_id]
    )

    if list_item.save
      render json: {message: "List_Item created"}, status: :created
    else
      render json: {errors: list_item.errors.full_messages}, status: :bad_request
    end
  end

  def destroy
    list_item = ListItem.find_by(id: params[:id])
    list_item.destroy

    render json: {message: "List_Item destroyed"}
  end

end
