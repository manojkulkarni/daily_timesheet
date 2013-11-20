class CreateUserSquads < ActiveRecord::Migration
  def change
    create_table :user_squads do |t|
      t.string :squad_pattern
      t.string :
      t.string :icon
      t.binary :

      t.timestamps
    end
  end
end
