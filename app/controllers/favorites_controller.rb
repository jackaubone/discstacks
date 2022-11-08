class FavoritesController < ApplicationController

  def index
    favorites = Favorite.all

    render json: favorites.as_json
  end

  def create
    favorite = Favorite.new(
      user_id: params[:user_id],
      item_id: params[:item_id]
    )

  end

  def destroy
    favorite = Favorite.find_by(id: params[:id])
    favorite.destroy

    render json: {message: "Destroyed"}
  end

end
