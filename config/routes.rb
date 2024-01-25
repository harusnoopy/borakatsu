Rails.application.routes.draw do

  root to: "public/homes#top"

  get 'about' => 'homes#about'
  
  devise_for :users
  devise_for :admin
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
