class AddUserIdToEvents < ActiveRecord::Migration[5.2]
  def change
    add_column :events, :user_id, :integer
    add_column :events, :genre_id, :integer
    add_column :events, :event_title, :string, null: false, default: ""
    add_column :events, :event_image_id, :string, null: false, default: ""
    add_column :events, :event_capital, :text, null: false
    add_column :events, :datetime, :datetime
    add_column :events, :time, :time
    add_column :events, :post_code, :string, null: false, default: ""
    add_column :events, :address, :string, null: false, default: ""
    add_column :events, :page, :text, null: false
    add_column :events, :latitude, :float, default: ""
    add_column :events, :ongitude, :float, default: ""
  end
end
