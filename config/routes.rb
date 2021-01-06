Rails.application.routes.draw do
  get 'grading_standards/index'
  get 'grading_standards/new'
  get 'grading_standards/edit'
  delete 'grading_standards/:id'
  resources :grading_standards
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
