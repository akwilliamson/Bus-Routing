BusTimetable::Application.routes.draw do

  root :to => 'stations#index'

  resources :stations
  resources :lines
  resources :stops

  resources :stations do
    resources :stops
  end

  resources :lines do
    resources :stops
  end

  resources :stops do
    resources :stations
    resources :lines
  end
end
