# frozen_string_literal: true

Rails.application.routes.draw do
  mount Rswag::Ui::Engine => "/api-docs"

  use_doorkeeper do
    controllers applications: "oauth_applications"
  end

  devise_for :users, controllers: {
    sessions: "users/sessions"
  }

  # Project administration via UI
  resources :projects

  mount Endava::Base => "/api"

  root to: "home#index"
end
