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

  namespace :admin do
    flipper_app = Flipper::UI.app do |builder|
      builder.use Rack::Auth::Basic do |username, password|
        username == 'admin' && password == 'basaltic'
      end
    end

    mount flipper_app, at: '/flipper'
  end
end
