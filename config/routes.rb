Rails.application.routes.draw do
  get 'about/index'

  resources :contacts 
  
  root 'welcome#index'
end
