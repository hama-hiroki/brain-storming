Rails.application.routes.draw do
  devise_for :users
  get 'topics/index'
  root to: "topics#index"
end
