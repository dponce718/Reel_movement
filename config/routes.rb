Rails.application.routes.draw do
  

  
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  devise_for :users

  root 'static_pages#home'
  get    'login'             => 'devise/sessions#new'
  get    'profile'             => 'subscriptions#show'
  get     'recipes'           => 'recipes#index'
  get     'corrective_exercise' => 'programs#show'
  get     'privacy_policy'                =>  'static_pages#privacy_policy'
  get     'stripe'                =>  'static_pages#stripe'
  get     'free_trial'                =>  'static_pages#free_trial'
  get     'sign_up'                =>  'static_pages#sign_up'
  get     'forgot_subscription'                =>  'static_pages#forgot_subscription'
  get     'terms'                =>  'static_pages#terms'
  get     'about'                =>  'static_pages#about'
  get     'free_workout'                =>  'static_pages#free_workout'
  get     'schedule'                =>  'programs#schedule'
  get     'assessment'                =>  'subscriptions#assessment'
  get     'private'                =>  'static_pages#private_training'
  
  

 

  

 
  resources :subscriptions
  resources :static_pages 
  resources :recipes, only: [:index]
  resources :subscribe
   resources :charges
   resources :programs   


#post 'webhook' => 'subscribe#webhook'
mount StripeEvent::Engine, at: '/stripewebhook' # provide a custom path




  resources 'users' do
 get 'check_email', :on => :collection
 resources :programs


end
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
