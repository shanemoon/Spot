class CreateSpotFinders < ActiveRecord::Migration
  def self.up
    create_table :spot_finders do |t|
      t.string :name
      t.float :longitude
      t.float :latitude

      t.timestamps
    end
  end

  def self.down
    drop_table :spot_finders
  end
end
