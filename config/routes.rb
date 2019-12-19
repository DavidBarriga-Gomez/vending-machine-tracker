Rails.application.routes.draw do
  root to: "owners#index"

  resources :owners do
    resources :machines, only: [:index]
    # get '/:id', to: 'machine#show'
  end

  resources :machines, only: [:show] do
    # get '/:id', to: 'machine#show'
  end

  # get '/machine/:id', to: 'machine#show'
end
