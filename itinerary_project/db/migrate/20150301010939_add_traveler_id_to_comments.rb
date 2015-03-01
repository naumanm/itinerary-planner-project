class AddTravelerIdToComments < ActiveRecord::Migration
  def change
    add_column :comments, :traveler_id, :integer
  end
end
