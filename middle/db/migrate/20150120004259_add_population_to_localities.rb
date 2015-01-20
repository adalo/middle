class AddPopulationToLocalities < ActiveRecord::Migration
  def change
    add_column :localities, :population, :integer
  end
end
