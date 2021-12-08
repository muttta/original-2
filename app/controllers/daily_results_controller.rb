class DailyResultsController < ApplicationController
  before_action :set_goal, only:[:show]

  def index
    
  end
  def new
    @daily_result = DailyResult.new
  end
  def create
    @daily_result = DailyResult.new(daily_params)
    if @daily_result.save
      redirect_to daily_result_path(@daily_result.id)
    else
      render :new
    end
  end
  def show
    @daily = DailyResult.find(params[:id])
    @tomorrow = MonthlyGoal.where(day: Date.tomorrow.all_day)
    @tomorrow.each do |tomorrow|
      @tomorrow_sales = tomorrow.sales_expectation
      @tomorrow_laborcost = tomorrow.labor_cost
      @tomorrow_event = tomorrow.event
    end
  end
  
  private

  def set_goal
    @monthly = MonthlyGoal.where(day: Date.today.all_day)
    @monthly.each do |monthly|
      @sales_expectation = monthly.sales_expectation
      @labor_cost = monthly.labor_cost
      @event = monthly.event
    end
  end
  def daily_params
    params.require(:daily_result).permit(:today, :sales, :man_hr, :event)
  end

end
