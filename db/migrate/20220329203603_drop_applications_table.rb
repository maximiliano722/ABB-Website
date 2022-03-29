class DropApplicationsTable < ActiveRecord::Migration[6.1]
  def up
    drop_table :applications
  end

  def down
    raise ActiveRecord::IrreversibleMigration 
  end
end
