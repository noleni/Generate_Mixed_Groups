Rails.application.routes.draw do
  root to: "pages#home"
  resources :caracters, only: %i[index]
  resources :groups, only: %i[index new create] do
    resources :memberships, only: %i[index new create]
  end
end
