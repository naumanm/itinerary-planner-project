class Destination < ActiveRecord::Base
	has_many :itineraries
	has_many :travelers, through: :itineraries
	has_many :comments, as: :commentable

	validates :place, presence: true
end
