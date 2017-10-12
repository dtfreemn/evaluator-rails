class Api::V0::UsersController < ApplicationController
    
  def index
    users = User.include_all.all.order(:last_name)
    render json: users.as_json(include_hash)
  end

  def create
    user = User.new(user_params)
    if user.save
      render json: User.all.order(:last_name)
    else
      render json: {error: 'nope'}
    end
  end

  def show
    user = User.find_by(id: params[:id])
    render json: user
  end

  def destroy
    user = User.find_by(id: params[:id])
    user.destroy
    render json: User.all.order(:last_name)
  end

  private

  def user_params
    params.require(:user).permit(:first_name, :last_name, :email, :admin)
  end

  def include_hash
    {
      :include => [:scores => {:include => :eval_item}]
    }
  end

end