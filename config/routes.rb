Rails.application.routes.draw do
  resources :events
  resources :statuses
  resources :event_types
  resources :coupoms
  resources :coupom_types
  resources :tags
  resources :event_item_types
  devise_for :users, controllers: {
      sessions: 'users/sessions',
      registrations: 'users/registrations'
  }

  devise_scope :user do
    root to: 'users/sessions#index'
  end

end
