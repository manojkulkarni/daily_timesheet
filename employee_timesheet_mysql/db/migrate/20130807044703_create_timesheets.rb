class CreateTimesheets < ActiveRecord::Migration
  def change
    create_table :timesheets do |t|
      t.date :date
      t.time :time_from
      t.time :time_to
      t.string :task

      t.timestamps
    end
  end
end
