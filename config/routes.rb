Rails.application.routes.draw do
  resources :products
  resource :cart do
    resources :order_items
  end
end
