Rails.application.routes.draw do

  namespace :public do
    get 'users/edit'
    get 'users/show'
    get 'users/unsubscribe'
  end
  namespace :public do
    get 'participations/confirm'
    get 'participations/index'
    get 'participations/show'
  end
  namespace :public do
    get 'organizers/show'
  end
  namespace :public do
    get 'favorites/create'
    get 'favorites/destroy'
    get 'favorites/index'
  end
  namespace :public do
    get 'events/index'
    get 'events/show'
  end
  namespace :admin do
    get 'users/edit'
    get 'users/index'
    get 'users/show'
  end
  namespace :admin do
    get 'participations/index'
  end
  namespace :admin do
    get 'organizers/edit'
    get 'organizers/index'
    get 'organizers/new'
    get 'organizers/show'
  end
  namespace :admin do
    get 'events/edit'
    get 'events/index'
    get 'events/new'
    get 'events/show'
  end
  root to: "public/homes#top"

  get 'about' => 'homes#about'

  devise_for :users, skip: [:passwords], controllers: {
    registrations: "public/registrations",
    sessions: 'public/sessions'
  }

  devise_for :admin, skip: [:registrations, :passwords], controllers: {
    sessions: "admin/sessions"
  }
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
