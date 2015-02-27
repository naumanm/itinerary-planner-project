class CreateDestinations < ActiveRecord::Migration
  def change
    create_table :destinations do |t|
      t.string :place

      t.timestamps null: false
    end
  end
end
