class CreateNews < ActiveRecord::Migration
  def change
    create_table :news do |t|
      t.date :create_date
      t.integer :created_by
      t.string :title
      t.string :body
      t.string :post_type

      t.timestamps null: false
    end
  end
end
