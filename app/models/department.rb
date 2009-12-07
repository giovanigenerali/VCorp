class Department < ActiveRecord::Base
  attr_accessible :name
  has_many :employees, :dependent => :delete_all
  validates_presence_of :name
end