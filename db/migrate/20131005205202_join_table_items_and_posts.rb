class JoinTableItemsAndPosts < ActiveRecord::Migration
  def change
    create_table :items_posts, :id => false do |t|
      t.integer :item_id
      t.integer :post_id
    end
  end
end
