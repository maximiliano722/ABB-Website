class AddIndexToUsersEmail < ActiveRecord::Migration[6.1]
  def change
    add_index :users, :email, unique: true #to make sure the unique is database level
  end
end
