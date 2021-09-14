class CreateOnlines < ActiveRecord::Migration[5.2]
  def change
    create_table :onlines do |t|
    t.integer :user_id
    t.integer :genre_id
    t.string  :event_title, null: false
    t.string  :event_image_id
    t.text    :event_capital, null: false
    t.text    :page, null: false
    t.string  :iamges, default: true, null: false
    t.timestamps
    end
  end
end
