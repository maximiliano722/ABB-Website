class CreateUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :users do |t|
      t.string :name
      t.date :DOB
      t.integer :year
      t.string :major
      t.string :position
      t.string :email
      t.integer :service_points
      t.integer :brother_points
      t.integer :social_points
      t.float :gpa
      t.float :study_hours
      t.boolean :is_officer
      t.boolean :is_admin
      


      t.timestamps
    end
  end
end
