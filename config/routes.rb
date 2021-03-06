Structwares::Application.routes.draw do
  get "form_details/new"
  resources :users, only: [:new, :create]
  resources :messages, only: [:new, :create]
  resources :sessions, only: [:new, :create, :destroy]
  resources :form_details, only: [:create]
  root 'static_pages#home'
  match '/formdetail',  to: 'form_details#new'    , via: 'get'
  match '/formshow' ,  to: 'form_details#show'  , via: 'get'
  match '/trydemo'   ,  to: 'static_pages#trydemo', via: 'get'
  match '/about'   ,  to: 'static_pages#about', via: 'get'
  match '/clients'   ,  to: 'static_pages#clients', via: 'get'
  match '/login'     ,  to: 'sessions#new'        , via: 'get'
  match '/logout'    ,  to: 'sessions#destroy'    , via: 'delete'
  match '/signup'    ,  to: 'users#new'           , via: 'get' 
  match '/contact' , to: 'messages#new'           , via: 'get'
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

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
  #     member do
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
