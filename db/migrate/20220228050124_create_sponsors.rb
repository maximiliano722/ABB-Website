class CreateSponsors < ActiveRecord::Migration[6.1]
  def change
    create_table :sponsors do |t|
      t.integer :event_id
      t.string :sponsor_name
      t.string :sponsor_type

      t.timestamps
    end
  end
end
