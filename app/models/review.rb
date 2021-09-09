class Review < ApplicationRecord
  belongs_to :user
  belongs_to :event
  validates :score, presence: true

end
