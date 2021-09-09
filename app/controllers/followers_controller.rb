class FollowersController < ApplicationController
  
  def create
   recipe = Recipe.find(params[:recipe_id])
   follower = current_user.followers.new(recipe_id: recipe.id)
   follower.save
   redirect_to recipe_path(recipe)
  end

  def destroy
   recipe = Recipe.find(params[:recipe_id])
   follower = current_user.followers.find_by(recipe_id: recipe.id)
   follower.destroy
   redirect_to recipe_path(recipe)
  end
end
