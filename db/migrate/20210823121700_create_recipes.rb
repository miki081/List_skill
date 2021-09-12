class CreateRecipes < ActiveRecord::Migration[5.2]
  def change
    create_table :recipes do |t|
      t.integer :user_id
      t.integer :genre_id
      t.string :recipe_title, default: "", null: false
      t.string :recipe_image_id, default: "", null: false
      t.text :recipe_capital, default: "", null: false
      t.string :image
      t.string :images
      t.integer :like_id
      t.timestamps
    end
  end
end
