class UsersController < ApplicationController
  def index
    users = User.all
    render json: users
end

  def new
    user = User.new
    render json: user
  end

  def create
    user = User.create(user_params)
    render json: user
  end

  private
    def user_params
      params.require(:user).permit(:name, :age, :ethnicity, :gender_identity, :political_party, :location, :religion, :currency, :username, :password)
    end
end
