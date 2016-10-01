class CreateGamestats < ActiveRecord::Migration[5.0]
  def change
    create_table :gamestats do |t|
      t.belongs_to :game, index:true
      t.belongs_to :stat, index:true

      t.timestamps
    end
  end
end
