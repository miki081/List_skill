class CreateReviews < ActiveRecord::Migration[5.2]
  def change
    create_table :reviews do |t|
    t.integer :user_id 
    t.integer :event_id
    t.integer :recipe_id
    t.string  :content,  null: false
    t.integer :score
    
    
    
    t.timestamps
    end
  end
end
