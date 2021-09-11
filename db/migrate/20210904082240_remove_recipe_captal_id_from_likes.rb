class RemoveRecipeCaptalIdFromLikes < ActiveRecord::Migration[5.2]
  def change
    remove_column :likes, :recipe_capital_id, :integer
  end
end
