class Recipe < ApplicationRecord
  # def self.looks(search, word)
  #     @recipe = Recipe.all
   has_many_attached :images
   has_many_attached :article
   has_many_attached :variant

  # end
   # attachment :image_id
    # mount_uploaders :images, ImageUploader

     # has_many :images, dependent: :destroy
     #accepts_nested_attributes_for :images
      belongs_to :user
      belongs_to :genre

      has_many :comments, dependent: :destroy
      has_many :likes, dependent: :destroy

  def liked_by?(user)
    likes.where(user_id: user.id).exists?
  end

end
