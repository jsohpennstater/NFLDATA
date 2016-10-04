class RemoveSeasonId < ActiveRecord::Migration[5.0]
  def up
    remove_column :games, :season_id, :integer, null: false
  end

  def down
    add_column :games, :season_id, :integer, null: false
  end
end
