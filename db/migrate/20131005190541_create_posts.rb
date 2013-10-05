class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.integer :thread_id
      t.text :text
      t.datetime :posted_at

      t.timestamps
    end
  end
end
