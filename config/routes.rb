Rails.application.routes.draw do
  get 'message/index'

  namespace :api do
    namespace :v1 do
      resources :message, only: [:index]
      resources :lorem, only: [:index]
    end
  end
end
