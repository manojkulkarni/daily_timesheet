class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :user_id
      t.string :user_name
      t.string :email_id
      t.integer :ph_number
      t.text :address
      t.string :city
      t.string :state
      t.string :contry
      t.text :other_details
      t.binary :PoL
      t.binary :PoA
      t.string :team_name

      t.timestamps
    end
  end
end
