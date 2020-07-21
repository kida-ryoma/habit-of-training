class TrainsController < ApplicationController
  require "date"
  before_action :get_menu, only: [:new, :index]

  def index
  end

  def new
  end

  def create
    Train.create(done: "yes", user_id: current_user.id)
    redirect_to trains_path
  end

  private
  def get_menu
    now = Time.now
    today = now.wday + 1
    @training_menu = TrainingMenu.find(today).menu
  end

end
