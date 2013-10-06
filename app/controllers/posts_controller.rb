class PostsController < ApplicationController
  
  def index
    if params[:item]
    end
  end

  def search
    sterm = params[:item]
    tags = params[:tags]
    if sterm != nil
      @res = Item.find_by_name(sterm).posts rescue nil
      @res.each do |article|
        Rails.logger.debug article.text.inspect
        Rails.logger.debug article.thread_id.inspect
      end
    end
    render layout: false
  end
end
