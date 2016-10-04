class AddedGameColumns < ActiveRecord::Migration[5.0]
  def up
    add_column :games, :season_type, :string, null: false
    add_column :games, :time, :string, null: false
    add_column :games, :wday, :string, null: false
    add_column :games, :week, :integer, null: false
  end

  def down
    remove_column :games, :season_type, :string, null: false
    remove_column :games, :time, :string, null: false
    remove_column :games, :wday, :string, null: false
    remove_column :games, :week, :integer, null: false
  end
end
