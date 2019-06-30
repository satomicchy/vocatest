Rails.application.routes.draw do
  root to: 'guides#index'
  get 'guides/word_list/:book_id', to: 'guides#word_list', as: 'guides_word_list'

  devise_for :users
  resources :words
  resources :books
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
