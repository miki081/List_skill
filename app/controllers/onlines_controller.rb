class OnlinesController < ApplicationController
 before_action :authenticate_user!, only: [:show]

  def new
    @online = Online.new
    @genres = Genre.all
  end

  def index
     @onlines = Online.all
    if params[:genre_id]
      
      @onlines = Online.find(params[:genre_id])

      
      @onlines= @genre.order(created_at: :desc).all
    else
      
      @genres = Online.order(created_at: :desc).all
    end
  end
  def edit
    @online = Online.find(params[:id])
    scream_online(@online)
  end


  def show
    @online = Online.find(params[:id])
    @online_new = Online.new
    @user = @online.user

  end

  def create
     @online = Online.new(online_params)
     @online.user_id = current_user.id
     if @online.save
        redirect_to online_path(@online.id)
     else
        render :new
     end
  end

  def destroy
    @online = Online.find(params[:id])
    @online.delete
    redirect_to events_path
  end

  def update
       online = Onlien.find(params[:id])
       online.update(online_params)
         redirect_to onlines_path
    # else
      # @events = Event.all
      # flash[:notice] = 'error'
      # render :edit
  end

  private

  def online_params
     params.require(:online).permit(:post_image, :event_title, :event_capital, :page, :genre_id, :name )
  end

  def scream_online(online)
    unless online.user.id == current_user.id
      redirect_to onlines_path
    end
  end
end
