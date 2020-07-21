class TrainingMenusController < ApplicationController
  require "date"

  def index
  end

  def new
    now = Time.now
    today = now.wday + 1
    @training_menu = TrainingMenu.find(today).menu
  end
end
