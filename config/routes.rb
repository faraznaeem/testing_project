Rails.application.routes.draw do
  namespace :v1, defaults: { format: :json } do
    resources :adverts, only: [:index]
  end
end
