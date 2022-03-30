class CreateApplications < ActiveRecord::Migration[6.1]
  def change
    create_table :applications do |t|
      t.string :name
      t.string :email
      t.string :status

      t.timestamps
    end
  end
end
