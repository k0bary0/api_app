Rails.application.routes.draw do
  root "weather_forecast#index"

  resources :weather_forecasts
end
