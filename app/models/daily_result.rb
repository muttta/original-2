class DailyResult < ApplicationRecord
  #belongs_to  :monthly_goal
  validates :today, :sales, :productivity,   presence: true
end
