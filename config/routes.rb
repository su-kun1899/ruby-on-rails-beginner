Rails.application.routes.draw do
  get 'messages/index'
  get 'messages', to: 'messages#index'

  get 'messages/add'
  post 'messages/add', to: 'messages#create'

  get 'messages/edit/:id', to: 'messages#edit'
  patch 'messages/edit/:id', to: 'messages#update'

  get 'messages/delete/:id', to: 'messages#delete'
  get 'messages/:id', to: 'messages#show'

  get 'people/index'
  get 'people', to: 'people#index'
  get 'people/input'
  get 'people/edit/:id', to: 'people#edit'
  get 'people/delete/:id', to: 'people#delete'
  get 'people/search'
  get 'people/:id', to: 'people#detail'
  post 'people/create'
  post 'people/search'
  patch 'people/edit/:id', to: 'people#update'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
