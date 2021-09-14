class EventsController < ApplicationController
 before_action :authenticate_user!, only: [:show]
  def new
    @event = Event.new
    @genres = Genre.all
  end

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

  def edit
    @event = Event.find(params[:id])
    scream_event(@event)
  end


  def show
    @event = Event.find(params[:id])
    @event_new = Event.new
    @user = @event.user

  end

  def create
     @event = Event.new(event_params)
     @event.user_id = current_user.id
     if @event.save
        flash[:notice] = "You have created book successfully."
        redirect_to event_path(@event.id)
     else
        render :new
     end
  end

  def destroy
    @event = Event.find(params[:id])
    @event.delete
  #   respond_to do |format|
  #   format.html { redirect_to books_url, notice: 'Book was successfully destroyed.'}
  #           format.html{redirect_to books_path, notice: "Book was successfully destroyed."}
  #           format.html{render :book}
  # end
    redirect_to events_path, notice: "successfully destroyed."
  end

  def update
       event = Event.find(params[:id])
       event.update(event_params)
         flash[:notice] = "You have updated successfully."
         redirect_to events_path
    # else
      # @events = Event.all
      # flash[:notice] = 'error'
      # render :edit
  end

  private

  def event_params
     params.require(:event).permit(:post_image, :event_title, :event_capital, :post_code, :address, :genre_id, :name )
  end

  def scream_event(event)
    unless event.user.id == current_user.id
      redirect_to events_path
    end
  end
end
