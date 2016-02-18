Rails.application.routes.draw do
  resources :readings
  devise_for :users
  get '/purchase_reading_service/:service' => 'info_for_readings#new'
  resources :info_for_readings
  resources :info_for_romantic_readings
  root 'pages#home'
  get '/team' => 'pages#team'
  get '/reading_services' => 'pages#reading_services'
  get '/valentines_day' => 'pages#valentines_day', as: 'valentines_day'

  get '/newsletter_signup' => 'pages#newsletter_signup'
  get '/contact_us' => 'pages#contact_us'

  get '/thank_you_for_your_purchase' => 'pages#thank_you_for_your_purchase'
  get '/canceled_purchase' => 'pages#canceled_purchase'
  get '/intern_ad' => 'pages#intern_ad'
  get '/about' => 'pages#about'

  get '/blog' => 'blog_posts#index'
  get '/blog/:post_name' => 'blog_posts#show', as: 'blog_post'
  get '/automator' => redirect('/readings')

  get '/code_to_paypal_url/:promo_code/package/:package' => 'promo_codes#paypal_url'

  get '/code_to_paypal_url/:promo_code/package/:package' => 'promo_codes#paypal_url'

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
