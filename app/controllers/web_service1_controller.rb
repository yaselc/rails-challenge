require 'net/http'
require 'webservice2_client'

class WebService1Controller < ApplicationController

  def Login

    api_instance = WebService2Client::UserApi.new

    email = params[:email] # String | User email to verify

    image = WebService2Client::UserImage.new # UserImage | Image uploaded by user
    image.image = params[:image]

    opts = {
        format: "json" # String |
    }

    begin
      #Verify user
      result = api_instance.ver_user(email, image, opts)
      render json: {"message" => result.message}
    rescue WebService2Client::ApiError => e
      render json: {"message" => "No Autorizado"}, status: 401
    end
  end
end
