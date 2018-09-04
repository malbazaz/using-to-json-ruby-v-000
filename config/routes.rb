Rails.application.routes.draw do
  resources :posts, only: [:index, :show, :new, :create, :edit]
  get 'posts/:id/post_data', to: 'posts#post_data'
    get 'posts/:id.json', to: 'posts#post_data'
  get 'posts/:id', to: 'posts#show'
  post 'posts/:id', to: 'posts#show'
end
