class AddStartDateToDestinations < ActiveRecord::Migration
  def change
    add_column :destinations, :start_date, :date
  end
end
