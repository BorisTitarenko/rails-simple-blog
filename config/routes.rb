Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root "posts#index", as: "home"

  get "abouto" => "pages#about"

  get "hello" => "hello#hello"

  #patch "about" => "pages#about", as: "about"

  resources :posts do
    resources :comments
  end
end
