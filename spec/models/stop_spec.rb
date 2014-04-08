require 'spec_helper'

describe Stop do
  it { should validate_presence_of :station_id }
  it { should validate_presence_of :line_id }
  it { should validate_presence_of :arrival }
  it { should validate_presence_of :departure }
end
