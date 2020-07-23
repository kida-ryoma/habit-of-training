class Train < ApplicationRecord
  belongs_to :user

  scope :created_today, -> { where("created_at >= ?", Time.zone.now.beginning_of_day) }
  validates :start_time, presence: true

  # def start_time
  #   self.start_time
  # end
end
