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

    render json: EvaluationCategory.where(organization_id: admin.organization_id).as_json(include_hash)
  end

  def update
    admin = Administrator.find_by(id: decoded_token[0]['administrator_id'])
    eval_cat = EvaluationCategory.find_by(id: params[:id])
    if eval_cat.update(evaluation_category_params)
      render json: EvaluationCategory.where(organization_id: admin.organization_id).as_json(include_hash)
    else
      render json: {error: 'Unable to edit group'}
    end
  end


  private

  def evaluation_category_params
    params.require(:evaluation_category).permit(:name)
  end

  def include_hash
    {
      :include => [:possible_points]
    }
  end

end