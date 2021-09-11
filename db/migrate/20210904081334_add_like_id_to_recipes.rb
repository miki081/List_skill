class AddLikeIdToRecipes < ActiveRecord::Migration[5.2]
  def change
    add_column :recipes, :like_id, :integer
  end
end
