class Api::V0::EvalItemsController < ApplicationController

  def index
    eval_items = EvalItem.all
    render json: eval_items
  end
  
  def create
    eval_item = EvalItem.new(eval_item_params)
    if eval_item.save
      render json: EvalItem.all
    else
      render json: {error: 'nope'}
    end
  end

  def show
    eval_item = EvalItem.find_by(id: params[:id])
    render json: eval_item
  end

  def destroy
    eval_item = EvalItem.find_by(id: params[:id])
    eval_item.destroy
    render json: EvalItem.all
  end


  private

  def eval_item_params
    params.require(:eval_item).permit(:name, :description)
  end

end