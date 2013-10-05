class PostsController < ApplicationController
  def index
  end

  def search
    sterm = params[:s]
    tags = params[:tags]
    if sterm != nil
      res = Posts.search(sterm)
      res.each do |article|
        Rails.logger.debug article.text.inspect
        Rails.logger.debug article.thread_id.inspect
      end
    end
  end
end
