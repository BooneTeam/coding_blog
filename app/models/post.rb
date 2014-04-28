class Post < ActiveRecord::Base
  belongs_to :category
  has_many :articles
  has_many :images, :through => :articles
  accepts_nested_attributes_for :articles,:allow_destroy => true
end
