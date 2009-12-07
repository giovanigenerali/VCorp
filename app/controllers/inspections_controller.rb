class InspectionsController < ApplicationController

  before_filter :find_cars

  def index
    @inspections = Inspection.all
  end
  
  def show
    @inspection = Inspection.find(params[:id])
  end
  
  def new
    @inspection = Inspection.new
  end
  
  def create
    @inspection = Inspection.new(params[:inspection])
    if @inspection.save
      flash[:notice] = "Successfully created inspection."
      redirect_to @inspection
    else
      render :action => 'new'
    end
  end
  
  def edit
    @inspection = Inspection.find(params[:id])
  end
  
  def update
    @inspection = Inspection.find(params[:id])
    if @inspection.update_attributes(params[:inspection])
      flash[:notice] = "Successfully updated inspection."
      redirect_to @inspection
    else
      render :action => 'edit'
    end
  end
  
  def destroy
    @inspection = Inspection.find(params[:id])
    @inspection.destroy
    flash[:notice] = "Successfully destroyed inspection."
    redirect_to inspections_url
  end
  
  private
  def find_cars
    @cars = Car.find(:all, :order => "model, board")
  end
  
end