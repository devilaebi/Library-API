Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :libraries, only: [] do
        resources :books, only: :index
      end
    end
  end
end