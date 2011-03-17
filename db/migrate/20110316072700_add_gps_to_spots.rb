class AddGpsToSpots < ActiveRecord::Migration
  def self.up
    add_column :spots, :longitude, :float
    add_column :spots, :latitude, :float
  end

  def self.down
    remove_column :spots, :latitude
    remove_column :spots, :longitude
  end
end
