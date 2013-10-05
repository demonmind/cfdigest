class Item < ActiveRecord::Base
  attr_accessible :category_id, :description, :name, :rating
  belongs_to :category
  has_and_belongs_to_many :posts
end
