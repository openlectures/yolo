YOLo::Application.routes.draw do
  devise_for :users, controllers: {sessions: "sessions"}
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
