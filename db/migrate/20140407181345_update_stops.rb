class UpdateStops < ActiveRecord::Migration
  def change
    add_column :stops, :arrival, :time
    add_column :stops, :departure, :time
  end
end
