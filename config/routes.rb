Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: 'slayerz#home', as: 'home'
  resources :slayerz, :jobs
  post '/slayerz/become_slayer', to: 'slayerz#turn_into_slayer', as: 'new_slayer'
  patch '/jobs/:id/accepted_job', to: 'jobs#accepted_job', as: 'accepted'

  resources :conversations do
    resources :messages
  end
end
