Rails.application.routes.draw do
  root 'static_pages#top'
  get '/practice', to: 'practice_pages#practice'
  resources :practice_results, only: %i[index create]
end
