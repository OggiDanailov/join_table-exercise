Rails.application.routes.draw do
  get 'tags/index'

  get 'tags/show'

  get 'tags/new'

  get 'jobs/index'

  get 'jobs/new'

  get 'jobs/show'

resources :books
resources :tags

root 'books#index'

end
