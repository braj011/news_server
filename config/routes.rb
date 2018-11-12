Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :categories
  resources :news_apis, only: [:create]
  # post '/news_apis', to: 'news_apis#query'

  post '/news_apis', to: 'news_apis#query_headlines'
  
end
