class Admins::RecipesController < ApplicationController
  before_action :authenticate_admin!
 
 def index
  # @items = Item.page(params[:page]).per(10)
  @recipes = Recipe.all
 
 end
 
 def edit
    @recipe = Recipe.find(params[:id])
 end
 def show
    @recipe = Recipe.find(params[:id])
 end

 def new
  @recipe = Recipe.new
 end

 def update
   @recipe = Recipe.find(params[:id])
   if @recipe.update(recipe_params)
    redirect_to admins_recipe_path(@recipe)
   else
    flash[:recipe_update] = "error"
    redirect_to edit_admins_recipe_path(@recipe)
   end
 end
 
 def create
   @recipe = Recipe.new(recipe_params)
   if @recipe.save
    redirect_to admins_recipe_path
   else
    flash[:recipe_create] = "error"
    redirect_to new_admins_recipe_path
   end
 end

  private

  def recipe_params
    params.require(:recipe).permit(:name, :recipe_title, :is_valid, :recipe_capital, :genre_id, :image)
  end
end
  
#   def index
#     @recipes = Recipe.all
#     if params[:genre_id]
#       # Categoryのデータベースのテーブルから一致するidを取得
#       @recipes = Recipe.find(params[:genre_id])
       
#       # category_idと紐づく投稿を取得
#       @recipes= @genre.order(created_at: :desc).all
#     else
#       # 投稿すべてを取得
#       @genres = Recipe.order(created_at: :desc).all
#     end
#   end
  
#   def show
#     @recipes = Recipe.find(params[:id])
#   end

  
#   private

#   def recipe_params
#     params.require(:recipe).permit(:recipe_title, :genre_id, :is_valid, :recipe_capital, :name )
#   end
# end

  