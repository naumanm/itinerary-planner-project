class RemoveItinIdFromConnections < ActiveRecord::Migration
  def change
    remove_column :connections, :itin_id, :integer
  end
end
