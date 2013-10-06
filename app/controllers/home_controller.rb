require 'csv'
class HomeController < ApplicationController
  def index
    @categories = Category.all
  end

  def about
  end

  def contact
  end
  
  def setupimport
  end
  
  def getitems
    @items = Subcategory.find_by_name(params[:subcat]).items
    render layout: false
  end
  
  def getsubcats
    @subcats = Category.find_by_name(params[:cat]).subcategories
    render layout: false
  end
  
  def getposts
  end
  
  def import
    file = params[:file].read
    CSV.parse(file) do |row|
      row3 = row[3].gsub("'","")
      row3 = row3.gsub("/","")
      uname = (0...8).map { (65 + rand(26)).chr }.join
      Post.create!(thread_id: row[0], text: row3, posted_at: Time.now, username: uname)
    end
  end
end
