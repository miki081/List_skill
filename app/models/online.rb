class Online < ApplicationRecord
  mount_uploader :post_image, PostImageUploader
    belongs_to :user
    belongs_to :genre
    validates :event_capital, presence: true
    validates :event_title, presence: true
 
end
