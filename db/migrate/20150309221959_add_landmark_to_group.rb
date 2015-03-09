class AddLandmarkToGroup < ActiveRecord::Migration
  def change
    add_column :groups, :lattitude, :float
    add_column :groups, :longitude, :float
  end
end
