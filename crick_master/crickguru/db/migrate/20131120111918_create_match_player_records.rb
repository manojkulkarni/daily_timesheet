class CreateMatchPlayerRecords < ActiveRecord::Migration
  def change
    create_table :match_player_records do |t|
      t.integer :runs
      t.integer :balls
      t.integer :sixes
      t.integer :fours
      t.integer :singles
      t.integer :run_outs_direct
      t.integer :rub_out_through
      t.float :overs
      t.integer :wickets
      t.float :medon
      t.integer :catches
      t.integer :runs_given
      t.integer :hattricks
      t.integer :match_player_points

      t.timestamps
    end
  end
end
