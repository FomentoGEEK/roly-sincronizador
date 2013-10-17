Roly::Application.routes.draw do
  devise_for :users , :controllers => {:registrations => "registrations"}

  devise_scope :user do
    get '/users/sign_up_mobile' => 'registrations#new_mobile'
  end

  get "admin/search_preferences"

  get "admin/privacy_preferences"

  get "admin/account"

  get "admin/edit_account"

  match "app_info" => "admin#app_info"

  # my businesses
  match '/businesses/view/:business_id' => "businesses#view_business"
  match '/businesses/add/:business_id' => "businesses#add"
  match '/businesses/new' => "businesses#new"
  match "/businesses/my" => "businesses#show"

  # my roly cards
  resources :my_roly_cards

  # album controller
  match '/albums/edit/:album_id' => "albums#edit_album"
  match '/albums/view/:album_id' => "albums#view_album"
  match '/albums/add/:album_id' => "albums#add"
  match '/albums/new' => "albums#new"
  match "/albums/my" => "albums#show"
  match "/albums/favorites" => "albums#favorite"
  match "/albums/recent" => "albums#recent"
  match "/albums/recently_added" => "albums#recently_added"
  match "/albums/today" => "albums#today"

  # roly cards

  match '/roly/get_card' => "roly#get_card"
  match '/roly/:roly_id' => "roly#detail"
  match '/roly/share/:roly_id' => "roly#share"

  get "roly/search"

  get "roly/detail"

  get "roly/map"

  # roly share
  match '/qr' => "roly#qrcode"
  match '/' => "albums#recent"


  # The priority is based upon order of creation:
  # first created -> highest priority.

  # Sample of regular route:
  #   match 'products/:id' => 'catalog#view'
  # Keep in mind you can assign values other than :controller and :action

  # Sample of named route:
  #   match 'products/:id/purchase' => 'catalog#purchase', :as => :purchase
  # This route can be invoked with purchase_url(:id => product.id)

  # Sample resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Sample resource route with options:
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

  # Sample resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Sample resource route with more complex sub-resources
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', :on => :collection
  #     end
  #   end

  # Sample resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end

  # You can have the root of your site routed with "root"
  # just remember to delete public/index.html.
  # root :to => 'welcome#index'

  # See how all your routes lay out with "rake routes"

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
  # match ':controller(/:action(/:id))(.:format)'
end
