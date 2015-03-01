class AddItineraryIdToConnections < ActiveRecord::Migration
  def change
    add_column :connections, :itinerary_id, :integer
  end
end
