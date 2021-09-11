class CreateOnlines < ActiveRecord::Migration[5.2]
  def change
    create_table :onlines do |t|
    t.integer :user_id
    t.integer :genre_id
    t.string  :event_title, default: "", null: false
    t.string  :event_image_id, default: "", null: false
    t.text    :event_capital, default: "", null: false
    t.text    :page, default: "", null: false
    t.string  :post_image
    t.timestamps
    end
  end
end