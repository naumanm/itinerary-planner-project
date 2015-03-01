class RemoveNameFromItineraries < ActiveRecord::Migration
  def change
    remove_column :itineraries, :name, :string
  end
end
