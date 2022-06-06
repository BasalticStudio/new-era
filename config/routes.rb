# typed: false
# frozen_string_literal: true

Rails.application.routes.draw do
  devise_for :players
  root to: 'home#index'

  mount Liveness::Status => '/status'

  namespace :game do
    root to: 'hangar#index'

    resources :maps, only: %i[index]
  end
end
