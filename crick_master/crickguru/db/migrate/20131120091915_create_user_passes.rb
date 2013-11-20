class CreateUserPasses < ActiveRecord::Migration
  def change
    create_table :user_passes do |t|
      t.string :password
      t.string :
      t.string :salt
      t.string :
      t.string :security_a
      t.string :

      t.timestamps
    end
  end
end
