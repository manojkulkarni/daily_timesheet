class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :user_id
      t.string :
      t.string :user_name
      t.string :
      t.string :email_id
      t.string :
      t.string :ph_number
      t.integer :
      t.string :address
      t.text :
      t.string :city
      t.string :
      t.string :state
      t.string :
      t.string :contry
      t.string :
      t.string :other_details
      t.text :
      t.string :PoL
      t.binary :
      t.string :PoA
      t.binary :
      t.string :team_name
      t.string :

      t.timestamps
    end
  end
end
