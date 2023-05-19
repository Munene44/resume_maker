Rails.application.routes.draw do
  resources :resumes
  root to: 'resumes#index'
end
