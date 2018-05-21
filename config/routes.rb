Rails.application.routes.draw do
  get 'welcome/new' => 'welcome#news'
  get 'welcome/wc' => 'welcome#welcome'
  get 'welcome/bye' => 'welcome#sayonara'

  resources :articles do
    resources :comments
  end

  root 'welcome#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end