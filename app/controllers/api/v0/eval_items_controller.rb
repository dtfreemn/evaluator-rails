class Api::V0::EvalItemsController < ApplicationController

  def index
    admin = Administrator.find_by(id: decoded_token[0]['administrator_id'])
    eval_items = EvalItem.where(organization_id: admin.organization.id)
    render json: eval_items
  end
  
  def create
    admin = Administrator.find_by(id: decoded_token[0]['administrator_id'])
    eval_item = EvalItem.new(eval_item_params)
    eval_item.organization = admin.organization
    if eval_item.save
      render json: EvalItem.where(organization_id: admin.organization.id)
    else
      render json: {error: 'nope'}
    end
  end

  def show
    eval_item = EvalItem.find_by(id: params[:id])
    render json: eval_item
  end

  def update
    admin = Administrator.find_by(id: decoded_token[0]['administrator_id'])
    eval_item = EvalItem.find_by(id: params[:id])
    if eval_item.update(eval_item_params)
      render json: EvalItem.where(organization_id: admin.organization.id)
    else
      render json: {error: 'Update of evaluation item failed'}
    end
  end

  def destroy
    admin = Administrator.find_by(id: decoded_token[0]['administrator_id'])
    eval_item = EvalItem.find_by(id: params[:id])
    eval_item.destroy
    render json: EvalItem.where(organization_id: admin.organization.id)
  end


  private

  def eval_item_params
    params.require(:eval_item).permit(:name, :description)
  end

end