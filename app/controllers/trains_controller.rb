class TrainsController < ApplicationController

  def index
    @trains = Train.all
  end

  def show
    @train = Train.find(1)
  end

  def new
  end

  def create
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private
  def trains_params
  end
end
