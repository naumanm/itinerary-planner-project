class Itinerary < ActiveRecord::Base
	belongs_to :traveler
	belongs_to :destination

	has_many :comments, as: :commentable

	validates :traveler_id, :destination_id, presence: true
end
