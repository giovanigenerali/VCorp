class Inspection < ActiveRecord::Base
  attr_accessible :car_id, :date, :description
  belongs_to :car
  validates_presence_of :car_id, :date, :description
end
