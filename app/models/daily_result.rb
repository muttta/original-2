class DailyResult < ApplicationRecord
  belongs_to  :monthly_goal
  has_one     :buiness_diary
  validates :today, :sales, :man_hr,   presence: true
end
