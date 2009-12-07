require 'spec_helper'

describe Car do
  
  before do
    @car = Car.new
  end
  
  it "should have a make" do
    @car.make = "Fiat"
    @car.make.should be == "Fiat"
  end
  
  it "should have a model" do
    @car.model = "Punto"
    @car.model.should be  == "Punto"
  end

  it "should have a model year" do
    @car.model_year = 2008
    @car.model_year.should be == 2008
  end
  
  it "should have a manufacture year" do
    @car.manufacture_year = 2008
    @car.manufacture_year.should be == 2008
  end
  
  it "should have a board" do
    @car.board = "ABC-4321"
    @car.board.should be == "ABC-4321"
  end
  
  it "should have a color" do
    @car.color = "Prata"
    @car.color.should be == "Prata"
  end
  
  it do
    @car.should be_an_instance_of(Car)
  end
  
end