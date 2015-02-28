class Destination < ActiveRecord::Base
	has_many :connections
	has_many :travelers, through: :connections
	has_many :comments, as: :commentable

	validates :place, presence: true
end
