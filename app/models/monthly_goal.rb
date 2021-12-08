class MonthlyGoal < ApplicationRecord
  berongs_to :daily_result
  validates :day, :sales_expectation, :labor_cost, presence: true
end
