class ProductsController < ApplicationController
  def index
    @products = Product.all.page(params[:page]).per(10)
  end

  private

  def set_product
    @product = Product.find(params[:id])
  end

  def product_params
    params.require(:product).permit(:name, :description, :permalink, :price, :image)
  end
end
