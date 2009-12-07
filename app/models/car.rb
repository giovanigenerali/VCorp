class Car < ActiveRecord::Base
  attr_accessible :make, :model, :model_year, :manufacture_year, :board, :color
  has_many :inspections, :dependent => :delete_all
  validates_presence_of :make, :model, :model_year, :manufacture_year, :board, :color
  def model_board
    "#{model} / #{board}"
  end
end
