class Item < ActiveRecord::Base
  attr_accessible :category_id, :description, :name, :rating
  belongs_to :category
end
