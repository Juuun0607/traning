class TrainsController < ApplicationController

  def index
      @q = Train.search(params[:q])
      @trains = @q.result(distinct: true).page(params[:page]).per(1)
  end

  def show
    @train = Train.joins(reviews: :user).find(params[:id])
    @reviews = @train.reviews
    @review = Review.new
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
end
