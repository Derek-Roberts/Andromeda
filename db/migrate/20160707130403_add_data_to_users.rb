class AddDataToUsers < ActiveRecord::Migration
  def change
    add_column :users, :username, :string
    add_index :users, :username, unique: true
    add_column :users, :first_name, :string
    add_index :users, :first_name
    add_column :users, :last_name, :string
    add_index :users, :last_name
    add_column :users, :date_of_birth, :datetime
    add_index :users, :date_of_birth
    add_column :users, :is_male, :boolean, default: false
    add_index :users, :is_male
    add_column :users, :avatar, :string
    add_index :users, :avatar
  end
end
