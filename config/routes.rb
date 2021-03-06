Rails.application.routes.draw do
  namespace :api do
  namespace :v1 do
    get "/olympians", to: "olympians#index"
    get "/olympians", to: "olympians#show"
    get '/olympian_stats', to: "stats#show"
    get '/events', to: "events#index"
    get '/events/:id/medalists', to: "events#show"
    end
  end
end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
