class Api::V0::AuthController < ApplicationController

  def create
    admin = Administrator.include_all.find_by(email: params[:email])
    if admin
      token = encode_token({administrator_id: admin.id})
      render json: {admin: admin.as_json(include_hash), jwt: token}
    else
      render json: {error: 'User not found'}
    end
  end

  private

  def include_hash
    {
      :include => [:organization]
    }
  end


end