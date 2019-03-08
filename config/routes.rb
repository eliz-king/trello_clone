Rails.application.routes.draw do
  get 'lists/index'
  get 'lists/show'
  get 'lists/new'
  get 'boards/index'
  get 'boards/show'
  get 'boards/new'
  root 'board#index'

  devise_for :users

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
