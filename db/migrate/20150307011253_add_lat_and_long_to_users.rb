class AddLatAndLongToUsers < ActiveRecord::Migration
  def change
    add_column :users, :latitude, :integer
    add_column :users, :longitude, :integer
  end
end
