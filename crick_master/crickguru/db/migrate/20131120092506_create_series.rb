class CreateSeries < ActiveRecord::Migration
  def change
    create_table :series do |t|
      t.string :series_name
      t.string :
      t.string :series_location
      t.string :
      t.string :series_desc
      t.text :
      t.string :series_date_from
      t.date :
      t.string :series_date_to
      t.date :
      t.string :series_result
      t.string :
      t.string :series_type
      t.string :

      t.timestamps
    end
  end
end
