class TrainsController < ApplicationController

  def index
      @q = Train.search(params[:q])
      @trains = @q.result(distinct: true).page(params[:page]).per(1)
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
