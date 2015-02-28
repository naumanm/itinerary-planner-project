class Itinerary < ActiveRecord::Base
	has_many :connections
	has_many :destinations, through: :connections
	has_many :travelers, through: :connections
	has_many :comments, as: :commentable

	validates :name, :itin_s_date, :itin_r_date, presence: true
end
