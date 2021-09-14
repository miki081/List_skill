class UsersController < ApplicationController

  def index
    @events = Event.order(created_at: :desc).page(params[:page]).per(4)
    @recipes = Recipe.order(created_at: :desc).page(params[:page]).per(4)
    @onlines = Online.order(created_at: :desc).page(params[:page]).per(4)
  end

  def show
    @user = User.find(params[:id])
    @recipe = Recipe.new
    @event = Event.new
    @online = Online.new
  end

  def edit
    @user = User.find(params[:id])
    @user = current_user
  end

  def update
    @user = User.find(params[:id])
  if@user.update(user_params)
         redirect_to user_path(@user)
  else
    render :edit
  end

  end

  def withdrow
   @user = User.find(params[:id])
  end

 def switch
   @user = User.find(params[:id])
   if @user.update(is_enabled: false)
    sign_out current_user
   end
   redirect_to root_path
 end

 private


  def user_params
   params.require(:user).permit(:is_enabled, :nick_name, :email, :introduction, :like_id, :image_id, images: [] )
  end

  def ensure_correct_user
    @user = User.find(params[:id])
    if current_user.id != @user.id
       redirect_to root_path
    end
  end

end
