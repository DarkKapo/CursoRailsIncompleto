Rails.application.routes.draw do
  get 'posts/index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get 'posts/create'
  root 'posts#index'
end
