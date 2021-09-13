class Genre < ApplicationRecord
  validates :name, presence: true
	has_many :recipes,dependent: :destroy
	has_many :events
  has_many :onlines
end
