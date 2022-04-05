class CreateMessages < ActiveRecord::Migration[6.1]
  def change
    create_table :messages do |t|
      t.string :name
      t.string :content

      t.timestamps
    end
  end
end
