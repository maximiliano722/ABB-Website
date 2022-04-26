# frozen_string_literal: true

class CreateSupportLogs < ActiveRecord::Migration[6.1]
  def change
    create_table :support_logs do |t|
      t.integer :event_id
      t.integer :sponsor_id

      t.timestamps
    end
  end
end
