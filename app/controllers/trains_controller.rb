class TrainsController < RankingController

  def index
    @q = Train.search(params[:q])
    @trains = @q.result(distinct: true).page(params[:page]).per(5).order("id DESC")
  end

  def show
    @train = Train.find(params[:id])
    @reviews = @train.reviews
    @review = Review.new
    @q = Train.search(params[:q])
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

  private
  def trains_params
    params.require(:train).permit(:title, :text, :image, :link1, :link2, :link3)
  end
end
