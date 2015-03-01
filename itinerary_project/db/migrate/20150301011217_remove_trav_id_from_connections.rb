class RemoveTravIdFromConnections < ActiveRecord::Migration
  def change
    remove_column :connections, :trav_id, :integer
  end
end
