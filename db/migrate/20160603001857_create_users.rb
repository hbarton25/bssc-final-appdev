class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.integer :year
      t.boolean :student
      t.boolean :admin

      t.timestamps null: false
    end
  end
end
