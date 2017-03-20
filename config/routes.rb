Rails.application.routes.draw do
  get 'people/index'
  get 'people', to: 'people#index'
  get 'people/input'
  get 'people/edit/:id', to: 'people#edit'
  get 'people/:id', to: 'people#detail'
  post 'people/create'
  patch 'people/edit/:id', to: 'people#update'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
