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

    resources :maps, only: %i[index show]
    resources :quests, only: %i[index]
  end

  authenticate(:admin_user) do
    namespace :admin do
      root to: 'dashboard#index'
      post '/refresh_allowlist', to: 'dashboard#refresh_allowlist'

      mount Sidekiq::Web => '/sidekiq'
      mount Flipper::UI.app(Flipper) => '/flipper', as: :flipper
    end
  end
end
