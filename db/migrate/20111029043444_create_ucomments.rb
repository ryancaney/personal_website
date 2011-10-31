class CreateUcomments < ActiveRecord::Migration
  def self.up
    create_table :ucomments do |t|
      t.text :content
      t.references :recipe

      t.timestamps
    end
  end

  def self.down
    drop_table :ucomments
  end
end
