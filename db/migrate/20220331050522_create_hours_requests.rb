class CreateHoursRequests < ActiveRecord::Migration[6.1]
  def change
    create_table :hours_request do |t|
      t.integer :user_id
      t.float :points
      t.string :category
      t.string :description

      t.timestamps
    end
  end
end
