class Api::V0::UsersController < ApplicationController
    
  def index
    admin = Administrator.find_by(id: decoded_token[0]['administrator_id'])
    users = User.include_all.where(organization_id: admin.organization.id).order(:last_name)
    render json: users.as_json(user_include_hash)
  end

  def create
    admin = Administrator.find_by(id: decoded_token[0]['administrator_id'])
    user = User.new(user_params)
    user.organization = admin.organization
    if user.save
      render json: User.include_all.where(organization_id: admin.organization.id).order(:last_name)
    else
      render json: {error: 'Could not save new employee'}
    end
  end

  def show
    user = User.include_all.find_by(id: params[:id])
    render json: user.as_json(user_include_hash)
  end

  def destroy
    admin = Administrator.find_by(id: decoded_token[0]['administrator_id'])
    user = User.find_by(id: params[:id])
    user.destroy
    render json: User.include_all.where(organization_id: admin.organization.id).order(:last_name).as_json(user_include_hash)
  end

  def update
    admin = Administrator.find_by(id: decoded_token[0]['administrator_id'])
    if admin
      user = User.find_by(id: params[:id])
      user.update(user_params)
      render json: User.include_all.where(organization_id: admin.organization.id).order(:last_name).as_json(user_include_hash)
    else
      render json: {error: 'Could not update user'}
    end
  end

  private

  def user_params
    params.require(:user).permit(:first_name, :last_name, :email, :admin)
  end

  def user_include_hash
    {
      :include => [{:scores => {:include => [{:eval_item => {:include => [:evaluation_category]}}, :administrator]}}, {:action_steps => {
        :include => :administrator}}]
    }
  end

end