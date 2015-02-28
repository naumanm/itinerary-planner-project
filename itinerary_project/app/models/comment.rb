class Comment < ActiveRecord::Base
	belongs_to :traveler
	belongs_to :itinerary
	belongs_to :destination

	validates :comment, presence: true   
end
