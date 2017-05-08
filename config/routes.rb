Rails.application.routes.draw do
resources :users
resources :sessions
resources :details
resources :guests
resources :admins
resources :accesses

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
