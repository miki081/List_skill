class AddRecipeIdToLikes < ActiveRecord::Migration[5.2]
  def change
    add_column :likes, :recipe_id, :integer
  end
end