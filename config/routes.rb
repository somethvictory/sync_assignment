Rails.application.routes.draw do
  namespace :v1 do
    resources :buildings, only: [] do
      resources :floors, only: :create
    end

    resources :residents, only: :create, path: '/people'

    resources :floors, only: [] do
      resources :apartments, only: :create
    end
  end
end
