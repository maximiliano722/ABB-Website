class CreateHourRequests < ActiveRecord::Migration[6.1]
  def change
    create_table :hour_requests do |t|
      t.integer :user_id
      t.float :points
      t.string :category
      t.string :description

      t.timestamps
    end
  end
end
