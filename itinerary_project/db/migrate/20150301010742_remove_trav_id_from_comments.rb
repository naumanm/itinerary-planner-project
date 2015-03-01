class RemoveTravIdFromComments < ActiveRecord::Migration
  def change
    remove_column :comments, :trav_id, :integer
  end
end
