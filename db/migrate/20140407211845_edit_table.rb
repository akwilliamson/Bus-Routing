class EditTable < ActiveRecord::Migration
  def change
    rename_column(:stops, :stations_id, :station_id)
    rename_column(:stops, :lines_id, :line_id)
  end
end
