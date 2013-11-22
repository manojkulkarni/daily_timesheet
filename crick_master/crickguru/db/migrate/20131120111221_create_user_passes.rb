class CreateUserPasses < ActiveRecord::Migration
  def change
    create_table :user_passes do |t|
      t.string :password
      t.string :salt
      t.string :security_a

      t.timestamps
    end
  end
end
