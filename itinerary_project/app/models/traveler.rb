class Traveler < ActiveRecord::Base
	validates :first_name, :last_name, :email, presence: true
	validates :email, uniqueness: true
	has_secure_password

	has_many :itineraries
	has_many :destinations, through: :itineraries
	has_many :comments, :as => :commentable

end
