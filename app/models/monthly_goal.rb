class MonthlyGoal < ApplicationRecord
  belongs_to :daily_result
  validates :day, :sales_expectation, :labor_cost, presence: true
end
