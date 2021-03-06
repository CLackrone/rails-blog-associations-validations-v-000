class CreatePostsJoinTable < ActiveRecord::Migration
  def change
    create_join_table :post, :tags do |t|
      t.index [:post_id, :tag_id]
      t.index [:tag_id, :post_id]
    end
  end
end
