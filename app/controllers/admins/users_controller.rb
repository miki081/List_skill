class Admins::UsersController < ApplicationController

def top

end
def index
    @users = User.all
end

def show
    @user = User.find(params[:id])
end
def edit
    @user = User.find(params[:id])
end
def create
     @user = User.new(user_params)
   if @user.save
    redirect_to admins_user_path
   else
    flash[:user_create] = "error"
    render :edit
   end
end
def update
   @user = User.find(params[:id])
   if @user.update(user_params)
    redirect_to admins_user_path(@user)
   else
    flash[:user_update] = "error"
    redirect_to edit_admins_user_path(@user)
   end
end

def user_params
    params.require(:user).permit(:nick_name, :email, :is_valid)
end

end
