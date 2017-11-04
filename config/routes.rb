Rails.application.routes.draw do
  
  get 'question_type/index'

  resources :plans
  resources :treatments
  resources :chairs
  resources :questions
  resources :anamnesis_models
  resources :procedures
  resources :procedure_categories
  resources :patients do
    resource :anamnesis do
      # get :questions
    end
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
