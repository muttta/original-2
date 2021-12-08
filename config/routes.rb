Rails.application.routes.draw do

  root to: "daily_results#index"
  resources :monthly_goals, only:[:new, :create]
  resources :daily_results, only:[:index, :new, :create, :show]
end
