class AddUserIdToRecipes < ActiveRecord::Migration[5.2]
  def change
    add_column :recipes, :user_id, :integer
    add_column :recipes, :genre_id, :integer
    add_column :recipes, :recipe_title, :string, null: false, default: ""
    add_column :recipes, :recipe_image_id, :string, null: false, default: ""
    add_column :recipes, :recipe_capital, :text, null: false, default: ""
  end
end
