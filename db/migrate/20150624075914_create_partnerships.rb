class CreatePartnerships < ActiveRecord::Migration
  def change
    create_table :partnerships do |t|
      t.integer :user_id
      t.integer :partner_id
      t.string :create
      t.string :destroy

      t.timestamps null: false
    end
  end
end
