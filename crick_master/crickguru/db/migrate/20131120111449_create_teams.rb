class CreateTeams < ActiveRecord::Migration
  def change
    create_table :teams do |t|
      t.string :team_name
      t.string :team_contry
      t.string :team_abbr
      t.binary :team_logo
      t.integer :team_test_rank
      t.integer :team_odi_rank
      t.integer :team_tt_rank

      t.timestamps
    end
  end
end
