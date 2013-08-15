CpInvPortal::Application.routes.draw do

  resources :archives, :only => [:index]
  resources :conferences
  resources :transactions

  devise_for :users

  root :to => "conferences#index"
end
