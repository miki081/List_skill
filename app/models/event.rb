class Event < ApplicationRecord
  def self.looks(search, word)
      @event = Event.all
      attachment :image_id
  end
    mount_uploader :post_image, PostImageUploader
    belongs_to :user
    belongs_to :genre
    validates :event_capital, presence: true
	validates :event_title, 		  presence: true
  geocoded_by :address
  after_validation :geocode, if: :address_changed?
 
end