class DailyResult < ApplicationRecord
  belongs_to  :monthly_goal, optional: true
  validates :today, :sales, :man_hr,   presence: true
end
