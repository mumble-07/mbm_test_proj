Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  root 'articles#index'

  get '/bubbly' => 'articles#index'
  get '/new_article' => 'articles#new'
  post '/new_article' => 'articles#create'
  get '/edit/:id/article' => 'articles#edit', as: 'edit_article'
  put '/edit/:id/article' => 'articles#update', as: 'update_article'
  delete '/:id/article' => 'articles#destroy', as: 'delete_article'
end
