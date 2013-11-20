class CreateMatchSquads < ActiveRecord::Migration
  def change
    create_table :match_squads do |t|

      t.timestamps
    end
  end
end
