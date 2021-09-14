class RecipesController < ApplicationController

  def new
    @recipe = Recipe.new
    @genres = Genre.all
  end
  def show
    @recipe = Recipe.find(params[:id])
    @recipe_new = Recipe.new
    @user = @recipe.user
    @comment = Comment.new
    @comments = @recipe.comments.order(created_at: :desc)
  end

  def index
    @recipes = Recipe.all
    if params[:genre_id]

      @recipes = Recipe.find(params[:genre_id])


      @recipes= @genre.order(created_at: :desc).all
    else

      @genres = Recipe.order(created_at: :desc).all
    end
  end
  def edit
    @recipe = Recipe.find(params[:id])
    scream_recipe(@recipe)
  end
  def update
   recipe = Recipe.find(params[:id])
   recipe.update(recipe_params)
    redirect_to recipes_path
  # else
  #     @recipes = Recipe.all
  #     flash[:notice] = 'error'
  #     render :edit
  # end
  # end
  end
  def create
     @recipe = Recipe.new(recipe_params)
     @recipe.user_id = current_user.id
     if @recipe.save!
        flash[:notice] = "You have created successfully."
        redirect_to recipe_path(@recipe.id)
     else
        render :new
     end
  end
   def destroy
    @recipe = Recipe.find(params[:id])
    @recipe.delete
  #   respond_to do |format|
  #   format.html { redirect_to books_url, notice: 'Book was successfully destroyed.'}
  #           format.html{redirect_to books_path, notice: "Book was successfully destroyed."}
  #           format.html{render :book}
  # end
    redirect_to recipes_path
   end

   private

  def recipe_params
     params.require(:recipe).permit(:recipe_title, :genre_id, :recipe_capital, :name, :post, images: [] )
  end

  def scream_recipe(recipe)
    unless recipe.user.id == current_user.id
      redirect_to recipes_path
    end
  end
end