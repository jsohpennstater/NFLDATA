class CreatePlayerstats < ActiveRecord::Migration[5.0]
  def change
    create_table :playerstats do |t|
      t.belongs_to :player, index:true
      t.belongs_to :stat, index:true

      table.timestamps
    end
  end
end
