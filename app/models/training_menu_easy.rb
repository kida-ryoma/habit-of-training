class TrainingMenuEasy < ApplicationRecord
  has_many :users, through: :user_training_menu_easies
  has_many :user_training_menu_easy
end
