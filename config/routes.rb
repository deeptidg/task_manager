TaskManager::Application.routes.draw do
  resources :tasks, only:[:index, :new]
  end
