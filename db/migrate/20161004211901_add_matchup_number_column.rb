class AddMatchupNumberColumn < ActiveRecord::Migration[5.0]
  def up
    add_column :stats, :matchup_number, :string, null: false
  end

  def down
    remove_column :stats, :matchup_number, :string, null: false
  end
end
