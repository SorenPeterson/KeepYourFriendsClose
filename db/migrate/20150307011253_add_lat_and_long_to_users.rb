class AddLatAndLongToUsers < ActiveRecord::Migration
  def change
    add_column :users, :latitude, :decimal, :precision => "15", :scale => "12"
    add_column :users, :longitude, :decimal, :precision => "15", :scale => "12"
  end
end
