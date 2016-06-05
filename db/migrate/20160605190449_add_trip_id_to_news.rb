class AddTripIdToNews < ActiveRecord::Migration
  def change
    add_column :news, :trip_id, :integer
  end
end
