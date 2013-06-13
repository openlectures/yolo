class UsersController < ApplicationController
  respond_to :json
  before_action :set_user, only: [:show, :edit, :update, :destroy]

  # GET /users
  def index
    respond_with User.all
  end

  # GET /users/1
  def show
    respond_with User.find(params[:id])
  end

  # GET /users/new
  def new
    render json: {}, status: 401
  end

  # GET /users/1/edit
  def edit
  end

  # POST /users
  def create
    @user = User.new(user_params)
    if @user.password == @user.password_confirmation
      @user.auth_token = Array.new(10).map { (65 + rand(58)).chr }.join
      @user.save
      render json: {}, status: 200
    else
      render json: {}, status: 401
    end
  end

  # PATCH/PUT /users/1
  def update
    if @user.update(user_params)
      redirect_to @user, notice: 'User was successfully updated.'
    else
      render action: 'edit'
    end
  end

  # DELETE /users/1
  def destroy
    @user.destroy
    redirect_to users_url, notice: 'User was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user
      @user = User.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def user_params
      params.require(:user).permit(:email, :auth_token, :password, :password_confirmation)
    end
end
