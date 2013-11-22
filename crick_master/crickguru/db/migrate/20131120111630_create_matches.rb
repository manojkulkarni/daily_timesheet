class CreateMatches < ActiveRecord::Migration
  def change
    create_table :matches do |t|
      t.date :match_date
      t.datetime :match_from
      t.datetime :match_to
      t.string :match_location
      t.string :match_ground
      t.text :match_details

      t.timestamps
    end
  end
end
