class AddDestinationIdToConnections < ActiveRecord::Migration
  def change
    add_column :connections, :destination_id, :integer
  end
end
