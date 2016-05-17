class TrainsController < ApplicationController

  def index
    @trains = Train.all
  end

  def show
  end

  def new
    @train = Train.find(1)
  end

  def create
  end

  def edit
  end

  def update
  end

  def destroy
  end
end
