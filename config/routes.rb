Rails.application.routes.draw do
  root "top#index"
  get "about" => "top#about", as: "about"
  get "locale" => "top#locale", as: "locale"
  resources :members do
    collection { get "search" }
  end
  resources :articles
end
