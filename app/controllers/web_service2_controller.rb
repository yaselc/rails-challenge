class WebService2Controller < ApplicationController
  def VerifyUser
    puts request.POST.inspect
    render json: {"message" => params[:email]}
  end
end
