# frozen_string_literal: true

class CreateExtraImages < ActiveRecord::Migration[6.1]
  def change
    create_table :extra_images do |t|
      t.string :group
      t.string :description

      t.timestamps
    end
  end
end
