Rails.application.routes.draw do
 
  resources :campaigns do
    resources :discussion_topics
    resources :comments
  end
  resources :campaigns
  root 'campaigns#index'
  devise_for :users, controllers: { sessions: "sessions" }

end
