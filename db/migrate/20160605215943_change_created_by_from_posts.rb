class ChangeCreatedByFromPosts < ActiveRecord::Migration
  def change
     rename_column :posts, :created_by, :user_id
   end
 end
