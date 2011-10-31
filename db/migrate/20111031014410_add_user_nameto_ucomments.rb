class AddUserNametoUcomments < ActiveRecord::Migration
  def self.up
    add_column :ucomments, :user_name, :string
  end

  def self.down
    remove_column :ucomments, :user_name, :string
  end
end
