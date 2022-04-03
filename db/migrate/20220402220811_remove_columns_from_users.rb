class RemoveColumnsFromUsers < ActiveRecord::Migration[6.1]
  def change
    remove_column :users, :DOB, :integer
    remove_column :users, :active_points, :integer
    remove_column :users, :gpa, :float
    remove_column :users, :total_hours, :float
    remove_column :users, :is_officer, :boolean
    remove_column :users, :is_admin, :boolean
  end
end
