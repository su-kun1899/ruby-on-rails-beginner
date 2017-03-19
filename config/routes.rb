Rails.application.routes.draw do
  get 'people/index'
  get 'people', to: 'people#index'
  get 'people/:id', to: 'people#detail'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
