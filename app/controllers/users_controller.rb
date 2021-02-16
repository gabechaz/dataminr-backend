class UsersController < ApplicationController
  before_action :authenticate, only: [:me]

  def index
    users = User.all
    render json: users
end

  def create
    user = User.create(user_params)
    render json: user
  end

  def show
    user = User.find(params[:id])
    render json: user
  end

  def login
    user = User.first
    render json: user
  end

  def logout
    @current_user = nil
  end

  def me
    user = @current_user
    render json: user
  end

  def update
    user = User.find(params[:id])
    user.update(wallet_params)
    render json: user
  end
  

  private

    def wallet_params
      params.permit(:wallet)
    end

    def user_params
      params.require(:user).permit(:name, :age, :ethnicity, :gender_identity, :political_party, :location, :religion, :currency, :username, :password)
    end
end
