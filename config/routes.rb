# typed: false
# frozen_string_literal: true

require 'sidekiq/web'

Rails.application.routes.draw do
  devise_for :admin_users
  devise_for :players

  root to: 'home#index'

  mount Liveness::Status => '/status'

  namespace :game do
    root to: 'hangar#index'

    scope :tutorial, as: :tutorial do
      get '/', to: 'tutorial#setup_name_view'
      patch '/', to: 'tutorial#setup_name'
    end

    resources :maps, only: %i[index show]
    resources :quests, only: %i[index]
  end

  authenticate(:admin_user) do
    namespace :admin do
      root to: 'dashboard#index'
      post '/refresh_allowlist', to: 'dashboard#refresh_allowlist'
      post '/refresh_game_data', to: 'dashboard#refresh_game_data'

      mount Sidekiq::Web => '/sidekiq'
      mount Flipper::UI.app(Flipper) => '/flipper', as: :flipper
    end
  end
end
