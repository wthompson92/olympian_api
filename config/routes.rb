Rails.application.routes.draw do
  namespace :api do
  namespace :v1 do
    # get "/olympians", to: "olympians#index"
    get "/olympians", to: "olympians#show"
    end
  end
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
