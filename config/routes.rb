Rails.application.routes.draw do
  root 'works#index'

  devise_for :users, skip: %i[registrations], controllers: {
    omniauth_callbacks: 'users/omniauth_callbacks'
  }

  devise_scope :user do
    delete 'users' => 'devise/registrations#destroy', as: :user_registration
  end

  namespace :my do
    resources :websites do
      member do
        put :move_up, :move_down, :move_top, :move_bottom
      end
    end

    resources :work_categories do
      member do
        put :move_up, :move_down, :move_top, :move_bottom
      end
    end

    resources :works do
      member do
        put :move_up, :move_down, :move_top, :move_bottom
      end
    end

    resource :user, only: %i[edit update]
  end

  resources :works, only: %i[index show]
  resources :tags, only: %i[index show]
end
