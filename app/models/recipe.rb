class Recipe < ActiveRecord::Base
  attr_accessible :name, :author, :ingredients, :directions

  has_attached_file :photo, :styles=> { :medium => "300x300>", :thumb => "100x100>" }
  # 1 to many
  #has_many :comments, :dependent => :destroy

end

