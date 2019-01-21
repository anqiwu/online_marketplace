class Product < ApplicationRecord
  has_many :order_items

  validates_presence_of :title, :price, :inventory_count

  def self.purchase(params)
    @product = Product.find(params[:id])
    if @product.inventory_count != 0
      @product.decrement!(:inventory_count, 1)
    end
  end
end
