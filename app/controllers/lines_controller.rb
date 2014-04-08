class LinesController < ApplicationController

  def index
    @lines = Line.all
    @stations = Station.all
  end

  def new
    @line = Line.new
  end

  def create
    @line = Line.new(params[:line])
    if @line.save
      flash[:notice] = "Line has been added!"
      redirect_to('/lines')
    else
      render 'new'
    end
  end

  def show
    @line = Line.find(params[:id])
  end
end
