class CreateConnections < ActiveRecord::Migration
  def change
    create_table :connections do |t|
      t.integer :itin_id
      t.integer :trav_id
      t.integer :dest_id
      t.date :start_date
      t.date :return_date

      t.timestamps null: false
    end
  end
end
