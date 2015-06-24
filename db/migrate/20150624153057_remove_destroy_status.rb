class RemoveDestroycondition < ActiveRecord::Migration
  def change
    remove_column :partnerships, :destroy, :string
    remove_column :partnerships, :create, :string
    add_column :partnerships, :condition, :integer
  end
end
