class DailyResultsController < ApplicationController
  #before_action :set_goal
  #before_action :set_contents

  def new
    @daily_result = DailyResult.new
  end
  def create
    @daily_result = DailyResult.new(daily_params)
    if @daily_result.save
      redirect_to root_path
    else
      render :new
    end
  end
  
  #private

  #def set_goal
    #@monthly = MonthlyGoal.where(day: Date.today.all_day)
  #end
  #def set_contents
    #@monthly.each do |monthly|
      #@sales_expectation = monthly.sales_expectation
      #@labor_cost = monthly.labor_cost
      #@event = monthly.event
    #end
  #end
  def daily_params
    params.require(:daily_result).permit(:today, :sales, :rate, :productivity, :event)
  end

end
