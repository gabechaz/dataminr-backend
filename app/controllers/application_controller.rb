class ApplicationController < ActionController::API
before_action

  def current_user
    User.first
  end
end
