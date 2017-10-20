class Api::V0::EvaluationCategoriesController < ApplicationController

  def create
    admin = Administrator.find_by(id: decoded_token[0]['administrator_id'])
    eval_cat = EvaluationCategory.new(evaluation_category_params)
    eval_cat.organization = admin.organization
    if eval_cat.save
      render json: eval_cat
    else
      render json: {error: 'Unable to create new group'}
    end
  end

  def index
    admin = Administrator.find_by(id: decoded_token[0]['administrator_id'])
    render json: EvaluationCategory.where(organization_id: admin.organization_id)
  end


  private

  def evaluation_category_params
    params.require(:evaluation_category).permit(:name)
  end

end