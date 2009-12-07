require 'spec_helper'

describe Department do
  
  before do
    @department = Department.new
  end
  
  it "should have a name" do
    @department.name = "Tecnologia"
    @department.name.should be == "Tecnologia"
  end

  it do
    @department.should be_an_instance_of(Department)
  end

end