class Article < ActiveRecord::Base
  belongs_to :post
  has_many   :images
end

