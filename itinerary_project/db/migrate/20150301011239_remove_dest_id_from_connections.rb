class RemoveDestIdFromConnections < ActiveRecord::Migration
  def change
    remove_column :connections, :dest_id, :integer
  end
end
