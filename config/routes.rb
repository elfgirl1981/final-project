Rails.application.routes.draw do
  resources :contacts 
  get 'welcome/index'
  root 'welcome#index'
end
