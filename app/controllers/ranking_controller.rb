class RankingController < ApplicationController
 before_action :ranking
  def ranking
    train_ids = Review.group(:train_id).order('count_train_id DESC').limit(5).count(:train_id).keys
    @ranking = train_ids.map{|id| Train.find id}
  end
end
