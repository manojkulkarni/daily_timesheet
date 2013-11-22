class CreatePlayers < ActiveRecord::Migration
  def change
    create_table :players do |t|
      t.string :player_name
      t.string :player_contry
      t.string :player_role
      t.string :player_type
      t.binary :player_photo
      t.integer :player_points
      t.text :player_details
      t.integer :player_cost

      t.timestamps
    end
  end
end
