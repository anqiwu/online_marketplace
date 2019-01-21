class ProductsController < ApplicationController
  before_action :set_product, only: [:show, :edit]
  # GET '/products'
  def index
    if params[:only_available] == "true"
      @products = Product.where.not("inventory_count": 0)
    else
      @products = Product.all
    end
    json_response(@products)
  end

  # GET '/products/id'
  def show
    json_response(@product)
  end

  # PUT 'products/id''
  def update
    if params[:purchase] == "true" #&& @product[:inventory_count] != 0
      @product = Product.purchase(params)
      json_response(@product)
    end
  end

private
  def product_param
    params.permit(:only_available, :purchase)
  end

  def set_product
    @product = Product.find(params[:id])
  end
end
