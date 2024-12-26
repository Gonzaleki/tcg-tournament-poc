class AddFieldsToLeague < ActiveRecord::Migration[7.2]
  def change
    add_column :leagues, :name, :string
    add_column :leagues, :start_date, :datetime
    add_column :leagues, :end_date, :datetime
    add_column :leagues, :size, :integer
  end
end
