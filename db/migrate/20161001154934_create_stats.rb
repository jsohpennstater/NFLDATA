class CreateStats < ActiveRecord::Migration[5.0]
  def change
    create_table :stats do |t|
      t.string :stat_type, null:false
      t.integer :att
      t.integer :cmp
      t.integer :yds
      t.integer :tds
      t.integer :turn_overs
      t.integer :lng

      t.timestamps
    end
  end
end
