class UsersController < ApplicationController
  before_action :get_login_user, only: [:show]
  def index
  end

  def show
    @trainings = @user.trains
  end

  private
  def get_login_user
    @user = current_user
  end
end
