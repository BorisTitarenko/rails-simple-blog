Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root "posts#index", as: "home"

  get "/signup" => "users#new"

  post "/signup" => "users#create"
  #patch "about" => "pages#about", as: "about"

  get "/login" => "sessions#new"

  post "/login" => "sessions#create"

  delete "/logout" => "sessions#destroy"
  
  resources :posts do
    resources :comments
  end

end
