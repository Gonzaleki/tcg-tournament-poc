class AddFieldsToUser < ActiveRecord::Migration[7.2]
  def change
    add_column :users, :name, :string
    add_column :users, :email, :string
    add_column :users, :password, :string
    add_column :users, :league_id, :integer
  end
end
