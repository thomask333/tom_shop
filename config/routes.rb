Rails.application.routes.draw do

  get 'view_order' => 'cart#view_order'

  get 'checkout' => 'cart#checkout'

  root 'storefront#all_items'

  get 'categorical' =>'storefront#items_by_category'

  get 'branding' => 'storefront#items_by_brand'
  
  post 'add_to_cart' =>'cart#add_to_cart'

  get 'delete' => 'cart#delete'

  post 'order_complete' => 'cart#order_complete'

  devise_for :users 
  resources :products
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
