class ProductsController < ApplicationController
  def index
    if params[:search].present?
      @products = Product.includes(image_attachment: :blob).where('name ILIKE ?', "%#{params[:search]}%")
    else
      @products = Product.includes(image_attachment: :blob)
    end
  end

  def show
    @product = Product.find(params[:id])
    @order_item = current_order.order_items.new
  end
end
