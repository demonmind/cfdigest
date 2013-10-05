class Post < ActiveRecord::Base
  include Tire::Model::Search
  include Tire::Model::Callbacks
  has_and_belongs_to_many :tags
  has_and_belongs_to_many :items
  
  
  attr_accessible :posted_at, :text, :thread_id
  
  tire.mapping do
    indexes :id, type: 'integer'
    indexes :text, :analyzer => 'snowball', :boost => 100
    indexes :thread_id, type: 'integer'
    indexes :posted_at, type: 'date'
  end
  
#   def self.search(params)
#     tire.search(load: true) do
#       query { string params[:s] }
#       Rails.logger.debug "Running now...".inspect
#       #filter :range, published_at: {lte: Time.zone.now}
#     end
#   end
end
