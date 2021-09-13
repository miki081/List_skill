class Recipe < ApplicationRecord
  # def self.looks(search, word)
  #     @recipe = Recipe.all
   has_many_attached :images

  # end
   # attachment :image_id
    # mount_uploaders :images, ImageUploader

     # has_many :images, dependent: :destroy
     #accepts_nested_attributes_for :images
      belongs_to :user
      belongs_to :genre, optional: true

      has_many :comments, dependent: :destroy
      has_many :likes, dependent: :destroy

  def liked_by?(user)
    likes.where(user_id: user.id).exists?
  end

end
