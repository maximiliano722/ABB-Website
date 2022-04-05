class CreateMemberEvents < ActiveRecord::Migration[6.1]
  def change
    create_table :member_events do |t|
      t.string :event_name
      t.date :date
      t.time :time
      t.string :location
      t.string :event_type
      t.float :point_value
      t.string :description
      t.string :password

      t.timestamps
    end
  end
end
