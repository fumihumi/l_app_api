Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  namespace :api do
    namespace :v1 do
      resources :users, only: %i[index show create]
      resources :rooms, only: %i[index show create] do
        resources :messages, only: %i[index show destroy create]
      end
    end
  end
end
