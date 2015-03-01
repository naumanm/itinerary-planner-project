class RemoveReturnDateFromItineraries < ActiveRecord::Migration
  def change
    remove_column :itineraries, :return_date, :date
  end
end
