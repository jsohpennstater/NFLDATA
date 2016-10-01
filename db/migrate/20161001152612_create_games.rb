class CreateGames < ActiveRecord::Migration[5.0]
  def change
    create_table :games do |t|
      t.string :matchup_number, null: false
      t.string :home_team, null: false
      t.string :away_team, null: false
      t.integer :year, null: false

      t.belongs_to :season, null: false
      t.timestamps
    end
  end
end
