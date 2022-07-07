Rails.application.routes.draw do
  root to: "pages#home"
  resources :caracters, only: %i[index new create destroy] do
    collection do
      get :random_caracter
    end
  end
  resources :requests, only: %i[new create] do
    resources :groups, only: %i[index new create] do
      resources :memberships, only: %i[index new create]
    end
  end
  resources :groups, only: [:destroy] do
    collection do
      get :reset
    end
  end
end
