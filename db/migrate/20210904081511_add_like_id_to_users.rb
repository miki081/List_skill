class AddLikeIdToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :like_id, :integer
  end
end
