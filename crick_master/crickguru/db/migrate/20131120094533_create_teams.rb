class CreateTeams < ActiveRecord::Migration
  def change
    create_table :teams do |t|
      t.string :team_name
      t.string :
      t.string :team_contry
      t.string :
      t.string :team_abbr
      t.string :
      t.string :team_logo
      t.binary :
      t.string :team_test_rank
      t.integer :
      t.string :team_odi_rank
      t.integer :
      t.string :team_tt_rank
      t.integer :

      t.timestamps
    end
  end
end
