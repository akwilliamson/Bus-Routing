class CreateStations < ActiveRecord::Migration
  def change
    create_table :stations do |t|
      t.string :name
    end
    create_table :lines do |t|
      t.string :color
    end
    create_table :stops do |t|
      t.belongs_to :stations
      t.belongs_to :lines
    end
  end
end
