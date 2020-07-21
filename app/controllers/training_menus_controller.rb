class TrainingMenusController < ApplicationController
  require "date"
  before_action :get_menu, only: [:new, :show]

  def index
  end

  def new
    now = Time.now
    today = now.wday + 1
    @training_menu = TrainingMenu.find(today).menu
  end

  def show
    now = Time.now
    today = now.wday + 1
    @training_menu = TrainingMenu.find(today).menu
  end

  private
  def get_menu
    now = Time.now
    today = now.wday + 1
    @training_menu = TrainingMenu.find(today).menu
  end
end
