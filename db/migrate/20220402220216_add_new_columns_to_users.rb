# frozen_string_literal: true

class AddNewColumnsToUsers < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :service_points, :integer
    add_column :users, :brother_points, :integer
    add_column :users, :social_points, :integer
    add_column :users, :study_hours, :decimal
    add_column :users, :image_url, :string
  end
end
