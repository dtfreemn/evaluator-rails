class Api::V0::ScoresController < ApplicationController

  def index
    render json: Score.all
  end
  
  def create
    admin = Administrator.find_by(id: decoded_token[0]['administrator_id'])
    score = Score.new(score_params)
    score.administrator = admin
    if score.save
      render json: score
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
    params.permit(:score, :user_id, :eval_item_id, :note)
  end

end