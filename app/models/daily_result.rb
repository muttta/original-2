class DailyResult < ApplicationRecord
  #belongs_to  :monthly_goal
  validates :today, :sales, :man_hr,   presence: true
end
