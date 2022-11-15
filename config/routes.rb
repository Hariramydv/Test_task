Rails.application.routes.draw do
  resources :discussion_topics
  resources :campaigns do
    resources :comments
  end
  resources :campaigns
  root 'campaigns#index'
  devise_for :users, controllers: { sessions: "sessions" }

end
