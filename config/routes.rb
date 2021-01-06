Rails.application.routes.draw do
  get '/grading_standards', to: 'grading_standards#index'
  get '/grading_standards/new', to:'grading_standards#new'
  post '/grading_standards', to:  'grading_standards#create'
  get '/grading_standards/:id', to: 'grading_standards#show', as: 'grading_standard'
  get '/grading_standards/:id/edit', to: 'grading_standards#edit', as: 'edit_grading_standard'
  patch '/grading_standards/:id', to: 'grading_standards#update'
  
  delete 'grading_standards/:id', to: 'grading_standards#destroy'
  # resources :grading_standards
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
