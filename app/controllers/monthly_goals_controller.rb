class MonthlyGoalsController < ApplicationController
  def new
    @monthly_goals = MonthlyGoal.new
  end
  def create
    @monthly_goals = MonthlyGoal.new(monthly_params)
    if @monthly_goals.save
      redirect_to root_path
    else
      render :new
    end
  end

  private

  def monthly_params
    params.require(:monthly_goal).permit(:day, :sales_expectation, :labor_cost, :event)
  end
end
