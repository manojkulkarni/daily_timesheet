class CreateAdmins < ActiveRecord::Migration
  def change
    create_table :admins do |t|
      t.text :email_id

      t.timestamps
    end
  end
end
