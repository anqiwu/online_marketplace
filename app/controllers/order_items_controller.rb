class OrderItemsController < ApplicationController
  def before_create
    @shopping_cart = current_cart
    @order_item = @shopping_cart.order_items.new(order_item_params)
    @shopping_cart.save
    session[:order_id] = @shopping_cart.id
  end

  # PUT /
  def update
    @shopping_cart = current_cart
    @order_item = @shopping_cart.order_items.find(params[:id])
    @order_item.update_attributes(order_item_params)
    @order_items = @shopping_cart.order_items
  end

  def destroy
    @shopping_cart = current_cart
    @order_item = @shopping_cart.order_items.find(params[:id])
    @order_item.destroy
    @order_items = @shopping_cart.order_items
  end

  private
  def order_item_params
    params.require(:order_item).permit(:quantity, :product_id)
  end

end
