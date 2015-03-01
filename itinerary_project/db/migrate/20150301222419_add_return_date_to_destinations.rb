class AddReturnDateToDestinations < ActiveRecord::Migration
  def change
    add_column :destinations, :return_date, :date
  end
end
