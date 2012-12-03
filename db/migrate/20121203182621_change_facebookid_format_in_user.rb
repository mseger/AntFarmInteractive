class ChangeFacebookidFormatInUser < ActiveRecord::Migration
  def self.up
    change_column :users, :facebookid, :integer, :limit => 8
  end

  def down
    change_column :users, :facebookid, :integer
  end
end
