class CreateLocalities < ActiveRecord::Migration
  def change
    create_table :localities do |t|

      t.timestamps
    end
  end
end
