class ApplicationController < ActionController::API
  jwt_secret = 'HuZ4qiPq2PaEuIh05I4S6Cxh3Nr6KJaLtSuzhzGjxuku'

#need to move to JWT secret out of this and into .env file

#payload is an object that has user id in it, jwt_secret is a random string used to encode the token
  def encode_token(payload)
    token = JWT.encode(payload, 'HuZ4qiPq2PaEuIh05I4S6Cxh3Nr6KJaLtSuzhzGjxuku')
  end

  def auth_header
    header = request.headers['Authorization']
  end

  def decoded_token
    if auth_header
      token = auth_header
      begin
        JWT.decode(token, 'HuZ4qiPq2PaEuIh05I4S6Cxh3Nr6KJaLtSuzhzGjxuku', true, {algorithm: 'HS256'})
      rescue JWT::DecodeError
        [{}]
      end
      else
    end
  end
end
