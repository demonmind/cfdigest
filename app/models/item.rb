class Item < ActiveRecord::Base
  attr_accessible :subcategory_id, :description, :name, :rating
  belongs_to :subcategory
  has_and_belongs_to_many :posts
  include Tire::Model::Search
  include Tire::Model::Callbacks
  after_save do
    update_index
  end
  
  tire.mapping do
    indexes :name,  :analyzer => 'snowball', :boost => 100
    indexes :posts
  end
  
end
