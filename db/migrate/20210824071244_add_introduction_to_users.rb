class AddIntroductionToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :introduction, :text, null: false, default: ""
    add_column :users, :image_id, :string
    add_column :users, :is_valid, :boolean, default: true, null: false
  end
end
