class WebService2Controller < ApplicationController
  def VerifyUser
    begin
      validUser = ValidUser.find_by! email: params[:email]
      render json: {"message" => "OK"}
    rescue ActiveRecord::RecordNotFound
      render json: {"message" => "No Autorizado"}, status: 401
    end
  end
end
