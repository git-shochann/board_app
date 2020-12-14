Rails.application.routes.draw do
  get 'searchpage', to:'search#index'
  get 'search', to:'search#search'
  devise_for :users
  root to: "toppage#index"
end
