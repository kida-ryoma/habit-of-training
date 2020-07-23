class TrainsController < ApplicationController
  require "date"
  before_action :authenticate_user!
  before_action :get_menu, only: [:new, :index]
  before_action :get_login_user, only: [:index,:new]

  def index
  end

  def new
    @training = Train.created_today.find_by(user_id: current_user.id)
    if @training.present?
      redirect_to action: :index
    end
  end

  def create
    Train.create(done: "yes", user_id: current_user.id, start_time: Date.today)
    redirect_to trains_path
  end

  private
  def get_menu
    now = Time.now
    today = now.wday + 1
    @training_menu = TrainingMenu.find(today).menu
  end

  def get_login_user
    @user = current_user
  end

end
