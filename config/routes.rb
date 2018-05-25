require "resque_web"

Rails.application.routes.draw do
  get 'welcome/new' => 'welcome#news'
  get 'welcome/wc' => 'welcome#welcome'
  get 'welcome/work' => 'welcome#work'

  resources :articles do
    resources :comments
  end

  mount ResqueWeb::Engine => "/resque_web"
  root 'welcome#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end