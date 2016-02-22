Rails.application.routes.draw do

  get                             'sessions/new'

  root			                      'static_pages#home'
  
  # Route for getting the NDA page. Is called when "Sign Up" is clicked in header.
  get       'nda_page'        =>  'users#nda_page'
  
  # Route for the first signup page. Is called when "I Agree" is clicked on NDA page.
  get       'signup_1'        =>  'users#new'
  
  # Route for the second signup page. Is called when "Next" is clicked on first signup page.
  post      'signup_2'        =>  'users#create'
  
  # Route to take users to their feed after clicking "Done" on second signup page. 
  patch     'new_user_feed'	  =>  'users#augment'
  
  # Route to take a user to the feed. Is used when user clicks "Feed" in header.
  get       'feed'            =>  'users#index'
  
  # Route to take users to their recommendations. Is called when "Recommendations" is clicked in the header.
  get       'review'          =>  'users#review'

  # Routes to make a new session. Is called when a user logs in.
  get       'login'           =>	'sessions#new'
  post      'login'           =>	'sessions#create'
  
  # Route to destroy the current session. Is called when "Log Out" is clicked in the header.
  delete    'logout'          =>	'sessions#destroy'

  resources :users
  resources :recommendations, only: [:create, :destroy, :show]

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
