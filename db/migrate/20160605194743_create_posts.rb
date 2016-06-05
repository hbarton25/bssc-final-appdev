class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.date :create_date
      t.integer :created_by
      t.text :title
      t.text :body
      t.integer :trip_id
      t.text :post_type
      t.text :post_method

      t.timestamps null: false
    end
  end
end
