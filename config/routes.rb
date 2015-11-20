Rails.application.routes.draw do
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".


  root to: 'site#index'

  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  get '/logout' => 'sessions#destroy'

  get '/index' => 'site#index'

  get '/teams/new' => 'teams#new'
  post '/teams' => 'teams#create'
  get '/team/:id' => 'teams#show'
  get '/team/:id/edit' => 'teams#edit'
  post '/team/:id' => 'teams#update'
  patch '/team/:id' => 'teams#update'
  get '/team/:id/manage_roles' => 'teams#manage_roles'



  get '/role/:id' => 'roles#show'
  get '/role/:id/edit' => 'roles#edit'
  post '/role/:id' => 'roles#update'
  patch '/role/:id' => 'roles#update'


  get '/signup' => 'users#new'
  post '/users' => 'users#create'
  get '/users/show/:id' => 'users#show'
  get '/users/:id/edit' => 'users#edit'
  post '/users/:id' => 'users#update'
  patch '/users/:id' => 'users#update'

  get 'mermber/show/:id' => 'members#show'

  # You can have the root of your site routed with "root"
  # root 'welcome#index'

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Example resource route with options:
  #   resources :products do
  #     user do
  #       get 'short'
  #       post 'toggle'
  #     end
  #
  #     collection do
  #       get 'sold'
  #     end
  #   end

  # Example resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Example resource route with more complex sub-resources:
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', on: :collection
  #     end
  #   end

  # Example resource route with concerns:
  #   concern :toggleable do
  #     post 'toggle'
  #   end
  #   resources :posts, concerns: :toggleable
  #   resources :photos, concerns: :toggleable

  # Example resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end
end
