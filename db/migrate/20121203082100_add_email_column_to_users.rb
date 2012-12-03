class AddEmailColumnToUsers < ActiveRecord::Migration
  def change
    add_column :users, :facebookid, :integer
  end
end
