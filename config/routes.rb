YOLo::Application.routes.draw do
  match "/sign_out", to: "sessions#destroy", via: :get
  resources :sessions, defaults: {format: :json}
  resources :users, defaults: {format: :json}

  resources :lessons, defaults: {format: :json}
  resources :topics, defaults: {format: :json}
  resources :seab_sub_topics, defaults: {format: :json}
  resources :seab_topics, defaults: {format: :json}
  resources :checkpoints, defaults: {format: :json} do
    collection do
      get 'feed'
    end
  end
  resources :subjects, defaults: {format: :json}
  root to: "application#index"
end
