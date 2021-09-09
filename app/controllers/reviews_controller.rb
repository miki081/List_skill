class ReviewsController < ApplicationController
  before_action :authenticate_user!, only: [:create]
  def index
    @event = Event.find(params[:event_id])
    @reviews = @event.reviews
  end

  def create
    @review = Review.new(review_params)
    @review.user_id = current_user.id
    if @review.save
      redirect_to event_reviews_path(@review.event)
    else
      @event = Event.find(params[:event_id])
      render "events/show"
    end
  end

  private
  def review_params
    params.require(:review).permit(:event_id, :score, :content)
  end
end
