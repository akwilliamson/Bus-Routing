class StopsController < ApplicationController

  def index
    @stops = Stop.all
  end

  def new
    @station = Station.find(params[:station_id])
    @stop = Stop.new
  end

  def create
    @stop = Stop.new(params[:stop])
    if @stop.save
      flash[:notice] = "Stop saved!"
      redirect_to :root
    else
      render 'new'
    end
  end
end
