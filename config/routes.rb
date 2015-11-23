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
  get '/team:teamid' => 'teams#show'
  get '/team:teamid/edit' => 'teams#edit'
  post '/team:teamid' => 'teams#update'
  patch '/team:teamid' => 'teams#update'
  get '/team:teamid/manage_roles' => 'teams#manage_roles'

  get '/team:teamid/role:roleid' => 'roles#show'
  get '/team:teamid/role:roleid/edit' => 'roles#edit'
  post '/team:teamid/role:roleid' => 'roles#update'
  patch '/team:teamid/role:roleid' => 'roles#update'

  get '/operations' => 'operations#index'
  get '/operations/new' => 'operations#new'
  post '/operations/new' => 'operations#create'
  get '/operation/:id' => 'operations#show'
  get '/operation/:id/edit' => 'operations#edit'
  post '/operation/:id' => 'operations#update'
  patch '/operation/:id' => 'operations#update'

  get '/permissions' => 'permissions#index'
  get '/permission/:id' => 'permissions#show'
  get '/permission/:id/edit' => 'permissions#edit'
  post '/permission/:id' => 'permissions#update'
  patch '/permission/:id' => 'permissions#update'

  get '/assignments' => 'assignments#index'
  get '/assignment/:id' => 'assignments#show'
  get '/assignment/:id/edit' => 'assignments#edit'
  post '/assignment/:id' => 'assignments#update'
  patch '/assignment/:id' => 'assignments#update'


  get '/signup' => 'users#new'
  post '/users' => 'users#create'
  get '/users/show/:id' => 'users#show'

  get '/users/edit/:id' => 'users#edit'
  post '/users/:id' => 'users#update'
  patch '/users/:id' => 'users#update'

  # get '/users/edit/:id' => 'users#edit_descp'
  # post '/users/edit/:id' => 'users#update_descp'
  # patch '/users/:id' => 'users#update_descp'
  
  # You can have the root of your site routed with "root"
  # root 'welcome#index'

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchaseurl(id: product.id)
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
  #     # (app/controllers/admin/productscontroller.rb)
  #     resources :products
  #   end
end
