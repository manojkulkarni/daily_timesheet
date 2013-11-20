class CreateMatches < ActiveRecord::Migration
  def change
    create_table :matches do |t|
      t.string :match_date
      t.date :
      t.string :match_from
      t.datetime :
      t.string :match_to
      t.datetime :
      t.string :match_location
      t.string :
      t.string :match_ground
      t.string :
      t.string :match_details
      t.text :

      t.timestamps
    end
  end
end
