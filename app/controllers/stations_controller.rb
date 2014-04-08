class StationsController < ApplicationController

  def index
    @stations = Station.all
    @lines = Line.all
  end

  def new
    @station = Station.new
  end

  def create
    @station = Station.new(params[:station])
    if @station.save
      flash[:notice] = "Station has been added!"
      redirect_to('/stations')
    else
      render 'new'
    end
  end

  def show
    @station = Station.find(params[:id])
  end
end
