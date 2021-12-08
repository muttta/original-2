Rails.application.routes.draw do

  root to: "daily_results#new"
  resources :monthly_goals, only:[:new, :create]
  resources :daily_results, only:[:new, :create]
end
