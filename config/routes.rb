CpInvPortal::Application.routes.draw do

  resources :archives, :only => [:index]
  resources :conferences
  resources :transactions

  devise_for :users

  match 'stylesheets/:action.:format', :controller => 'stylesheets'

  root :to => "conferences#index"
end
