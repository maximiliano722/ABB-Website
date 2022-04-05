class RemoveEventIdFromSponsors < ActiveRecord::Migration[6.1]
  def change
    remove_column :sponsors, :event_id, :integer
  end
end
