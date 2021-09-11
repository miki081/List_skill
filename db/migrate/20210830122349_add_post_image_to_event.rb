class AddPostImageToEvent < ActiveRecord::Migration[5.2]
  def change
    add_column :events, :post_image, :string
  end
end
