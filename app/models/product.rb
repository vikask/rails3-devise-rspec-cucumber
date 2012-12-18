class Product < ActiveRecord::Base
  attr_accessible :photo, :name
  has_attached_file :photo, :styles => { :medium => "300x300>", :thumb => "200x200>" }

  validates_attachment_presence :photo
  validates_attachment_size :photo, :less_than => 5.megabytes
  validates_attachment_content_type :photo, :content_type => ['image/jpeg', 'image/png']
end
