class ApplicationController < ActionController::Base
  include Response
  protect_from_forgery with: :null_session
  helper_method :current_cart

  def current_cart
    if !session[:cart_id].nil?
      ShoppingCart.find(session[:cart_id])
    else
      ShoppingCart.new
    end
  end
end
