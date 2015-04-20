class ReviewsController < ApplicationController
  before_filter :require_user
  def review_params
  end

  def create
     video = Video.find(params[:video_id])
     video.reviews.create(review_params.merge!(user: current_user))
    redirect_to video  
  end

private

  def review_params
    params.require(:review).permit( :rating, :content)
    #@review = Review.new(review_params)
  end
end

