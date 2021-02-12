class ApplicationController < ActionController::API
before_action

  def current_user
    current_user=User.first
    User.first
  end
end
