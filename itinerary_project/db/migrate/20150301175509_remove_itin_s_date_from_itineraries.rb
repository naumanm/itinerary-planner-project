class RemoveItinSDateFromItineraries < ActiveRecord::Migration
  def change
    remove_column :itineraries, :itin_s_date, :date
  end
end
