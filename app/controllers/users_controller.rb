class UsersController < ApplicationController
  before_action :authenticate, only: [:me]

  def index
    users = User.all
    render json: users
end

  def create
    user = User.create(user_params)
    token = JWT.encode({user_id: user.id}, 'codename', 'HS256')
    render json: {user: UserSerializer.new(user), token: token}, status: :created
  end

  def show
    user = User.find(params[:id])
    render json: user
  end

  def login
    user = User.find_by(username: params[:username])

    if user && user.authenticate(params[:password])
      # @current_user = user
      token = JWT.encode({user_id: user.id}, 'codename', 'HS256')
      render json: {user: UserSerializer.new(user), token: token}
    else
      render json: {errors: ['Try again loser!']}
    end

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
      params.permit(:name, :age, :ethnicity, :gender_identity, :political_party, :location, :religion, :currency, :username, :password, :wallet)
    end
end
# require(:user).