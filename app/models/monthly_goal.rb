class MonthlyGoal < ApplicationRecord
  validates :day, :sales_expectation, :labor_cost, presence: true
end
