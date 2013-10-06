class PostsController < ApplicationController
  
  def index
    if params[:item]
    end
  end

  def search
    sterm = params[:item]
    if params[:type]
      if params[:type] == "tag"
        tags = params[:item]
        @res = Tag.find_by_name(tags).posts rescue nil
      end
    else
      if sterm != nil
        @res = Item.find_by_name(sterm).posts rescue nil
      end
    end
    render layout: false
  end
end
