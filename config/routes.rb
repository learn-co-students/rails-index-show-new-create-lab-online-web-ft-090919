Rails.application.routes.draw do
  resources :coupons, only: [:create, :show, :index, :new] 
end
