class TrainsController < ApplicationController

  def index
    @trains = Train.all
  end

  def show
    
  end

end
