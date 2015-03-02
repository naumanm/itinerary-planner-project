class AddUsernameToTravelers < ActiveRecord::Migration
  def change
    add_column :travelers, :username, :string
  end
end
