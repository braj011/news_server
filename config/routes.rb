Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :categories
  resources :users
  resources :news_apis, only: [:create]

  resources :news_apis_profile, only: [:create]
  post '/news_apis_profile/', to: 'news_apis_profile#query'

  # post '/news_apis', to: 'news_apis#query'

  post '/news_apis', to: 'news_apis#query_headlines'

  get 'news_apis', to: 'news_apis#default_news'
  

end
