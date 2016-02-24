class AddFieldsToUsers < ActiveRecord::Migration
  def change
    add_column :users, :role, :string
    add_column :users, :state, :string
    add_column :users, :region, :string
    add_column :users, :city, :string
  end
end
