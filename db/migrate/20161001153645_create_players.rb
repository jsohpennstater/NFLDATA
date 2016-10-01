class CreatePlayers < ActiveRecord::Migration[5.0]
  def change
    create_table :players do |t|
      t.string :gsis, null: false
      t.string :first_name, null: false
      t.string :last_name, null: false
      t.string :birthdate, null: false
      t.integer :years_pro, null: false
      t.string :college, null: false

      t.timestamps
    end
  end
end
