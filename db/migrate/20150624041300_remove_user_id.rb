class RemoveUserId < ActiveRecord::Migration
  def change
    remove_column :languages, :user_id, :integer
  end
end
