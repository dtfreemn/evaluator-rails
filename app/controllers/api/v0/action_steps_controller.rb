class Api::V0::ActionStepsController < ApplicationController

  def create
    admin = Administrator.find_by(id: decoded_token[0]['administrator_id'])
    action_step = ActionStep.new(action_step_params)
    action_step.administrator = admin
    if action_step.save
      render json: action_step
    else
      render json: {error: 'didn\'t save'}
    end
  end

  private

  def action_step_params
    params.permit(:user_id, :description)
  end

end