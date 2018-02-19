class AddColumnsToUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :username, :string
    add_column :users, :first_name, :string
    add_column :users, :last_name, :string
    add_column :users, :age, :integer
    add_column :users, :photo, :string
    add_column :users, :address, :string
    add_column :users, :review, :integer
    add_column :users, :description, :text
  end
end
