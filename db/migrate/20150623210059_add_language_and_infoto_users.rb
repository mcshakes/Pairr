class AddLanguageAndInfotoUsers < ActiveRecord::Migration
  def change
    add_column :users, :details, :text, :limit => 500
  end
end
