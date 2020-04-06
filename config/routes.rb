Rails.application.routes.draw do
  resources :tags
 resources :goals do
   resources :todos do
     member do
       get "sort"
     end
   end
 end

devise_for :users

 root to: "home#index"
end
