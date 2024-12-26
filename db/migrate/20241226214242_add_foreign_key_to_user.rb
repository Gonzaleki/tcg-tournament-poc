class AddForeignKeyToUser < ActiveRecord::Migration[7.2]
  def change
    add_foreign_key :users, :leagues, column: :league_id
  end
end
