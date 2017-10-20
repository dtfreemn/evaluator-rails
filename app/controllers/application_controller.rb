class ApplicationController < ActionController::API

#need to move to JWT secret out of this and into .env file

#payload is an object that has user id in it, jwt_secret is a random string used to encode the token
  def encode_token(payload)
    token = JWT.encode(payload, ENV['JWT_SECRET'])
  end

  def auth_header
    header = request.headers['Authorization']
  end

  def decoded_token
    if auth_header
      token = auth_header
      begin
        JWT.decode(token, ENV['JWT_SECRET'], true, { algorithm: 'HS256' } )
      rescue JWT::DecodeError
        [{}]
      end
      else
    end
  end
end
