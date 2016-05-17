class TrainsController < ApplicationController

  def index
    @trains = Train.all.page(params[:page]).per(1)
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

  def search
  end

  private
  def trains_params
  end
end
