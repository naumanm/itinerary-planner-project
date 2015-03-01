class RemoveItinRDateFromItineraries < ActiveRecord::Migration
  def change
    remove_column :itineraries, :itin_r_date, :date
  end
end
