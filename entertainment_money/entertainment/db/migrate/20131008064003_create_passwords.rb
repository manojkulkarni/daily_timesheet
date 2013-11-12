class CreatePasswords < ActiveRecord::Migration
  def change
    create_table :passwords do |t|
      t.string :password
      t.string :salt

      t.timestamps
    end
  end
end
