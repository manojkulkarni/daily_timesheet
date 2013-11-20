class CreatePlayers < ActiveRecord::Migration
  def change
    create_table :players do |t|
      t.string :player_name
      t.string :
      t.string :player_contry
      t.string :
      t.string :player_role
      t.string :
      t.string :player_type
      t.string :
      t.string :player_photo
      t.binary :
      t.string :player_points
      t.integer :
      t.string :player_details
      t.text :
      t.string :player_cost
      t.integer :

      t.timestamps
    end
  end
end
