class CreateMatches < ActiveRecord::Migration
  def change
    create_table :matches do |t|
      t.string :team_a
      t.string :team_b
      t.string :location

      t.timestamps
    end
  end
end
