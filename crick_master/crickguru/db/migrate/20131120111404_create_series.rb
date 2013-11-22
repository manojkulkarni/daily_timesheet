class CreateSeries < ActiveRecord::Migration
  def change
    create_table :series do |t|
      t.string :series_name
      t.string :series_location
      t.text :series_desc
      t.date :series_date_from
      t.date :series_date_to
      t.string :series_result
      t.string :series_type

      t.timestamps
    end
  end
end
