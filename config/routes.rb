Rails.application.routes.draw do
  resources :anamneses
  resources :questions
  resources :anamnesis_models
  resources :procedures
  resources :procedure_categories
  resources :patients
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
