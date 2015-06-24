class AddConditionDefault < ActiveRecord::Migration
  def change
    remove_column :partnerships, :condition, :integer
    add_column :partnerships, :condition, :integer, default: 0
  end
end
