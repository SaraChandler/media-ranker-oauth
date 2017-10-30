class UpdateUsers < ActiveRecord::Migration[5.0]
  def change
    remove_column :users, :uid, :integer
    remove_column :users, :email, :string
    remove_column :users, :provider, :string
    add_column :users, :uid, :integer, null: false
    add_column :users, :email, :string
    add_column :users, :provider, :string, null: false 
  end
end
