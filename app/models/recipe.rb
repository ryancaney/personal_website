class Recipe < ActiveRecord::Base
  require "paperclip"

  attr_accessible :name, :author, :ingredients, :directions, :photo

  # 1 to many
  has_many :ucomments, :dependent => :destroy

  has_attached_file :photo, :styles => { :small => "150x150#" }
end

