class MonthlyGoal < ApplicationRecord
  validates :day, :sales_expectation, :labor_cost, :event, presence: true
end
