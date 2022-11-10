class ReviewsController < ApplicationController

  before_action :authenticate_user
  
  def index
    review = Review.all 

    render json: review.as_json
  end

  def show
    review = Review.find_by(id: params[:id])

    render json:review.as_json
  end

  def create
    review = Review.new(
      user_id: current_user.id,
      item_id: params[:item_id],
      rating: params[:rating],
      review_body: params[:review_body]
    )

    if review.save
      render json: {message: "Review created."}, status: :created
    else
      render json: { errors: review.errors.full_messages }, status: :bad_request
    end
  end

  def update 
    review = Review.find_by(id: params[:id])
    
    review.item_id = params[:item_id] || review.item_id
    review.rating = params[:rating] || review.rating
    review.review_body = params[:review_body] || review.review_body

    if review.save
      render json: {message: "Review updated."}, status: :updated
    else
      render json: {errors: review.errors.full_messages}, status: :bad_request
    end

  end

  def destroy
    review = Review.find_by(id: params[:id])
    review.destroy
    
    render json: {message: "Review deleted."}
  end

end
