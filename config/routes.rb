Querl::Application.routes.draw do
  resources :targets

  resources :target_lists

  resources :responses do
    collection do
      get 'export'
      get 'reports'
    end
  end

  resources :survey_items do
    collection do
      get 'add_to_survey'
    end
  end

  resources :user_roles

  resources :projects do
    collection do
      get 'show_users'
      get 'remove_user'
      get 'add_owner'
      get 'add_coder'
    end
  end
  resources :surveys do
    collection do
      get 'gather_response'
      get 'remove_survey_item'
      get 'preview'
      get 'move'
      get 'clone'
    end
  end
  
  resources :targets do
    collection do
      post 'import'
    end
  end

  devise_for :users
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  root 'dashboard#index'

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
