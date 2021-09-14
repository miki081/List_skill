class Admins::EventsController < ApplicationController
  
  before_action :authenticate_admin!
  
  def index
    @events = Event.all
     @events = Event.all
    if params[:genre_id]
     
      @events = Event.find(params[:genre_id])
       
    
      @events= @genre.order(created_at: :desc).all
    else
    
      @genres = Event.order(created_at: :desc).all
    end
  end
  
  def show
    @events = Event.find(params[:id])
  end

  
  private

  def event_params
    params.require(:event).permit(:event_title, :genre_id, :is_valid, :event_capital, :name, :post_image)
  end
end