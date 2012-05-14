ClientAppExample::Application.routes.draw do
  root :to => 'pages#index'
  resources :movies
end

