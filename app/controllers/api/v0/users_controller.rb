class Api::V0::UsersController < ApplicationController
    
  def index
    admin = Administrator.find_by(id: decoded_token[0]['administrator_id'])
    users = User.include_all.where(organization_id: admin.organization.id).order(:last_name)
    render json: users.as_json(include_hash)
  end

  def create
    admin = Administrator.find_by(id: decoded_token[0]['administrator_id'])
    user = User.new(user_params)
    user.organization = admin.organization
    if user.save
      render json: User.include_all.where(organization_id: admin.organization.id).order(:last_name)
    else
      render json: {error: 'nope'}
    end
  end

  def show
    user = User.include_all.find_by(id: params[:id])
    render json: user.as_json(include_hash)
  end

  def destroy
    admin = Administrator.find_by(id: decoded_token[0]['administrator_id'])
    user = User.find_by(id: params[:id])
    user.destroy
    render json: User.include_all.where(organization_id: admin.organization.id).order(:last_name).as_json(include_hash)
  end

  private

  def user_params
    params.require(:user).permit(:first_name, :last_name, :email, :admin)
  end

  def include_hash
    {
      :include => [:scores => {:include => [:eval_item, :administrator]}]
    }
  end

end