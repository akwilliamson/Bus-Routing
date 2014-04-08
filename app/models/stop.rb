class Stop < ActiveRecord::Base
  belongs_to :lines
  belongs_to :stations
  validates_presence_of :station_id
  validates_presence_of :line_id
  validates_presence_of :arrival
  validates_presence_of :departure
end
