Rails.application.routes.draw do


  root to: "vehicles#index"
  get "/show" => "vehicles#index", :as => :index

  namespace :api do
    namespace :v1 do
      post "/gps" => "waypoint#create", :as => :create
    end
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
