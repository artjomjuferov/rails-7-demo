# Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
Rails.application.routes.draw do
  resources :posts do
    post "/randoms" => "post#create_randoms", :as => :create_randoms

    resources :comments do
      post "/randoms" => "comments#create_randoms", :as => :create_randoms
    end
  end

  # Defines the root path route ("/")
  root "posts#index"
end
