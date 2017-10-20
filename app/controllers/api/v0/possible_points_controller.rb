class Api::V0::PossiblePointsController < ApplicationController

  def create
    admin = Administrator.find_by(id: decoded_token[0]['administrator_id'])
    poss_point = PossiblePoint.new(possible_point_params)
    
    if poss_point.save
      render json: poss_point
    else
      render json: {error: 'didn\'t work'}
    end
  end


  private

  def possible_point_params
    params.permit(:score, :description, :evaluation_category_id)
  end

end