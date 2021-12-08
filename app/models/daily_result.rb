class DailyResult < ApplicationRecord
  belongs_to  :monthly_goal
  validates :today, :sales, :rate, :productivity,   presence: true
end
