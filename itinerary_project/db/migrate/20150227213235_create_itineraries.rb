class CreateItineraries < ActiveRecord::Migration
  def change
    create_table :itineraries do |t|
      t.string :name
      t.date :itin_s_date
      t.date :itin_r_date

      t.timestamps null: false
    end
  end
end
