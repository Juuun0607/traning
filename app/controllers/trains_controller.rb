class TrainsController < ApplicationController

  def index
    @trains = Train.all
  end

  def show
    @train = Train.find(1)
  end

end
