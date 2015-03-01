class AddReturnDateToItineraries < ActiveRecord::Migration
  def change
    add_column :itineraries, :return_date, :date
  end
end
