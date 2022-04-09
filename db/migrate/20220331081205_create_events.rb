class CreateEvents < ActiveRecord::Migration[6.1]
  def change
    create_table :events do |t|
      t.string :event_name
      t.date :date
      t.time :time
      t.string :location
      t.string :event_type
      t.string :description
      t.string :password

      t.timestamps
    end
  end
end
