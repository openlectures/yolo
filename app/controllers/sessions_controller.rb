class SessionsController < ApplicationController
  respond_to :json

  def create
    user = User.find_by_email(params[:session][:email])
    if user && user.authenticate(params[:session][:password])
      session[:user_id] = user.id
      render json: {}, status: 200
    else
      render json: {error: "failed to authenticate"}, status: 401
    end
  end

  def destroy
    session[:user_id] = nil
    render json: {}, status: :accepted
  end
end
