class RemoveColumsFromUsers < ActiveRecord::Migration
  def change
    remove_column :users, :user_id, :string
    remove_column :users, :email_id, :string
    remove_column :users, :PoL, :binary
    add_column :users, :PoI, :blob
    change_column :users, :PoA, :blob
    change_column :users, :ph_number, :bigint
  end
end
