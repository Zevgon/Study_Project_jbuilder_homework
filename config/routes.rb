Rails.application.routes.draw do
  namespace :api, defaults: {format: :json} do
    resources :parties, only: [:show, :index]
    resources :guests do
      resources :gifts, only: [:show, :index]
    end
  end
end
