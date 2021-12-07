class MonthlyGoalController < ApplicationController
  def index
    @monthly_goals = MonthlyGoal.new
  end
end
