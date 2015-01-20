class AddLatitudeAndLongitudeToLocalities < ActiveRecord::Migration
  def change
    add_column :localities, :latitude, :string
    add_column :localities, :longitude, :string
  end
end
