class CreateEvents < ActiveRecord::Migration[5.2]
  def change
    create_table :events do |t|
      t.integer :user_id
      t.integer :genre_id
      t.string :event_title, null: false
      t.string :event_image_id, null: false
      t.text :event_capital, null: false
      t.datetime :datetime
      t.time :time
      t.string :post_code, null: false
      t.string :address, null: false
      t.text :page, null: false
      t.float :latitude
      t.float :ongitude
      t.string :post_image
      t.float :longitude
      t.timestamps
    end
  end
end
