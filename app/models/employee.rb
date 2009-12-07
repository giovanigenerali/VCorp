class Employee < ActiveRecord::Base
  attr_accessible :department_id, :name, :email, :position, :telephone
  belongs_to :department
  validates_presence_of :department_id, :name, :email, :position, :telephone
end