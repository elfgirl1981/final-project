Rails.application.routes.draw do
  resources :contacts 
  
  root 'welcome#index'
end
