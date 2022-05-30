# typed: false
# frozen_string_literal: true

Rails.application.routes.draw do
  devise_for :players
  root to: 'home#index'
end
