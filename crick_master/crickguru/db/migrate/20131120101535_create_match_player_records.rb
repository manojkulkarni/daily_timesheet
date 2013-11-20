class CreateMatchPlayerRecords < ActiveRecord::Migration
  def change
    create_table :match_player_records do |t|
      t.string :runs
      t.integer :
      t.string :balls
      t.integer :
      t.string :sixes
      t.integer :
      t.string :fours
      t.integer :
      t.string :singles
      t.integer :
      t.string :run_outs_direct
      t.integer :
      t.string :rub_out_through
      t.integer :
      t.string :overs
      t.float :
      t.string :wickets
      t.integer :
      t.string :medon
      t.float :
      t.string :catches
      t.integer :
      t.string :runs_given
      t.integer :
      t.string :hattricks
      t.integer :
      t.string :match_player_points
      t.integer :

      t.timestamps
    end
  end
end
