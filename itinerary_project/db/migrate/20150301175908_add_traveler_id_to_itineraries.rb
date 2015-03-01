class AddTravelerIdToItineraries < ActiveRecord::Migration
  def change
    add_column :itineraries, :traveler_id, :integer
  end
end
