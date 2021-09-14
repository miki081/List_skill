class Online < ApplicationRecord
   has_many_attached :images
    belongs_to :user
    belongs_to :genre
    validates :event_capital, presence: true
    validates :event_title, presence: true

end
