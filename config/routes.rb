Rails.application.routes.draw do
  root to: 'static#home'

  resources :movies do
    resources :characters
  end

  resources :characters

end
