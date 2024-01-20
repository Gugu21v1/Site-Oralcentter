Rails.application.routes.draw do
  resources :posts, only: [:index, :show, :create, :new, :destroy]
  devise_for :users
  root to: "pages#home"

  get "implantes", to: "pages#implantes"
  get "cirurgia", to: "pages#cirurgia"
  get "endodontia", to: "pages#endodontia"
  get "harmonizacao", to: "pages#harmonizacao"
  get "odontopediatria", to: "pages#odontopediatria"
  get "ortodontia", to: "pages#ortodontia"
  get "protese", to: "pages#protese"
  get "franqueado", to: "pages#franqueado"
  get "cliente", to: "pages#cliente"

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
