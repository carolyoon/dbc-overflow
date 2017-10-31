Rails.application.routes.draw do
  resources :questions do
  end
  root 'questions#index'

  resources :users do
  end

  resources :sessions
  # do
  # end
end
