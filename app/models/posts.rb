class Posts < ActiveRecord::Base
  include Tire::Model::Search
  include Tire::Model::Callbacks
  
  attr_accessible :posted_at, :text, :thread_id
  
  mapping do
    indexes :id, type: 'integer'
    indexes :text, :analyzer => 'snowball', :boost => 100
    indexes :thread_id, type: 'integer'
    indexes :posted_at type: 'date'
  end
end
