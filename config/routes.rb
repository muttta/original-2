Rails.application.routes.draw do

  root to: "monthly_goals#new"
  resources :monthly_goals, only:[:new, :create]
end
