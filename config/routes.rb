YOLo::Application.routes.draw do
  resources :lessons

  resources :topics

  resources :seab_sub_topics

  resources :seab_topics

  resources :checkpoints, defaults: {format: :json} do
    collection do
      get 'feed'
    end
  end

  resources :subjects, defaults: {format: :json}
  root to: "application#index"
end
