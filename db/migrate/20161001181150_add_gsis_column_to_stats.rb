class AddGsisColumnToStats < ActiveRecord::Migration[5.0]

    def up
      add_column :stats, :gsis, :string, null:false
    end

    def down
      remove_column :stats, :gsis, :string, null:false
    end

end
