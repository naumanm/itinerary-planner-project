class RemoveStartDateFromItineraries < ActiveRecord::Migration
  def change
    remove_column :itineraries, :start_date, :date
  end
end
