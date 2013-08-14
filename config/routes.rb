CpInvPortal::Application.routes.draw do
  resources :conferences

  devise_for :users

  root :to => "conferences#index"
end
