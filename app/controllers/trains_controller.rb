class TrainsController < ApplicationController

  def index
    @trains = Train.all.page(params[:page]).per(1)
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

  def search
  end

  private
  def trains_params
  end
end
