class TrainsController < RankingController

  def index
    @q = Train.search(params[:q])
    @trains = @q.result(distinct: true).page(params[:page]).per(5)
  end

  def show
    @train = Train.find(params[:id])
    @reviews = @train.reviews
    @review = Review.new
  end

  def new
    @train = Train.new
  end

  def create
    current_user.trains.create(trains_params)
    redirect_to :root
  end

  def edit
  end

  def update
  end

  def destroy
  end
<<<<<<< HEAD

  private
  def trains_params
    params.require(:train).permit(:title, :text, :image, :link1, :link2, :link3)
  end
end
=======
end
>>>>>>> a7d675eca6bb201901d3992cddd667db74fc7f19
