Rails.application.routes.draw do
  resources :magazines, only: [:index]
  resources :issues, only: [:index]
  resources :articles, only: [:index]
  resources :authors, only: [:index]

  root 'articles_admin/admin#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
