class RemoveCreateDateFromPosts < ActiveRecord::Migration
  def change
    remove_column :posts, :create_date
  end
end
