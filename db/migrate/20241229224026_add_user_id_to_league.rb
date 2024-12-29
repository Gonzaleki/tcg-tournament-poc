class AddUserIdToLeague < ActiveRecord::Migration[7.2]
  def change
    add_column :leagues, :user_id, :integer
  end
end
