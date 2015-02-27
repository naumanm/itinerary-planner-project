class CreateTravelers < ActiveRecord::Migration
  def change
    create_table :travelers do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :password
      t.string :password_digest

      t.timestamps null: false
    end
  end
end
