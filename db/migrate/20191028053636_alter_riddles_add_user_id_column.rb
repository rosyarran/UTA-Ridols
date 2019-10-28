class AlterRiddlesAddUserIdColumn < ActiveRecord::Migration[5.2]
  def change
    add_column :riddles, :user_id, :integer
    add_index :riddles, :user_id
  end
end
