class AddStartDateToItineraries < ActiveRecord::Migration
  def change
    add_column :itineraries, :start_date, :date
  end
end
