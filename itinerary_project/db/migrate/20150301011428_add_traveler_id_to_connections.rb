class AddTravelerIdToConnections < ActiveRecord::Migration
  def change
    add_column :connections, :traveler_id, :integer
  end
end
