class Report < ActiveRecord::Base
  attr_accessible :employee_id, :car_id, :comments, :status
  belongs_to :employee
  belongs_to :car
  validates_presence_of :employee_id, :car_id, :comments
end
