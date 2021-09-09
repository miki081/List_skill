class CommentsController < ApplicationController
  def create
    @recipe = Recipe.find(params[:recipe_id])
    comment = Comment.new(comment_params)
    if comment.save!
      redirect_to recipe_path(@recipe)
    else
      flash.now[:alert] = 'コメントを入力してください。'
    end
  end

  private
  def comment_params
    params.require(:comment).permit(:comment_content).merge(user_id: current_user.id, recipe_id: params[:recipe_id])
  end
end