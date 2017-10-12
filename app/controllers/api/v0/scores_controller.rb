class Api::V0::ScoresController < ApplicationController

  def index
    render json: Score.all
  end
  
  def create
    score = Score.new(score_params)
    if score.save
      render json: score.user
    else
      render json: {error: 'nope'}
    end
  end

  def show
    score = Score.find_by(id: params[:id])
    render json: score
  end

  private

  def score_params
    params.permit(:score, :admin_id, :user_id, :eval_item_id)
  end

end