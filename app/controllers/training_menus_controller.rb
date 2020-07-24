class TrainingMenusController < ApplicationController
  def index
  end

  def new
  end

  def easy_menu
    @user_easy = Difficulty.create(difficult: "easy", user_id: current_user.id)
    redirect_to new_train_path
  end
  def normal_menu
    Difficulty.create(difficult: "normal", user_id: current_user.id)
    redirect_to new_train_path
  end
  def hard_menu
    Difficulty.create(difficult: "hard", user_id: current_user.id)
    redirect_to new_train_path
  end
end
