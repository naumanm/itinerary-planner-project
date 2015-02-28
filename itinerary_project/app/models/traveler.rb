class Traveler < ActiveRecord::Base
	validates :first_name, :last_name, :email, presence: true
	validates :email, uniqueness: true
	has_secure_password

	has_many :connections
	has_many :destinations, through: :connections
	has_many :comments, :as => :commentable

end
