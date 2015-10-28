Rails.application.routes.draw do
  get("/", { :controller => "movies" , :action => "index"})

  get("/movies", { :controller => "movies", :action => "movie_list"})
  get("/movies/new_form", { :controller => "movies" , :action => "add_movie"})
  get("/movies/:id", { :controller => "movies" , :action => "individual_movie"})
  get("/movies/:id/edit_form", { :controller => "movies" , :action => "edit_movie"})
  get("/delete_movie/:id", { :controller => "movies" , :action => "delete_person"})
  get("/create_movie", { :controller => "movies" , :action => "create_movie"})
  get("/update_movie/:id", { :controller => "movies" , :action => "update_movie"})

  get("/delete_:person_type/:id", { :controller => "movies" , :action => "delete_person"})
  get("/create_:person_type", { :controller => "movies" , :action => "create_person"})
  get("/update_:person_type/:id", { :controller => "movies" , :action => "update_person"})
  get("/:person_type", { :controller => "movies" , :action => "person_list"})
  get("/:person_type/new_form", { :controller => "movies" , :action => "add_person"})
  get("/:person_type/:id", { :controller => "movies" , :action => "individual"})
  get("/:person_type/:id/edit_form", { :controller => "movies" , :action => "edit_individual"})



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
