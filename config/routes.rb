Rails.application.routes.draw do

  root to: 'home#index'
  resources :lists

  resources :tvshows, only: [:show, :create] do 
    collection do
      get 'search'
    end
  end

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
