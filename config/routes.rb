Rails.application.routes.draw do
resources :welcome, only: [:index]
  devise_for :users

  resources :estudiantes
  resources :cursos
  resources :profesores
  root 'estudiantes#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
