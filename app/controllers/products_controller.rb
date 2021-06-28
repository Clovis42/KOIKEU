class ProductsController < ApplicationController
  before_action :set_product, only: [:show]

  def index
    @products = Product.all
  end

  def show() end

  def new
    @product = Prodcut.new
  end

  def create
    @product = Product.new(product_params)
  end

  private

  def product_params
    params.require(product).permit(:name, :description, :price)
  end

  def set_product
    @product = Product.find(params[:id])
  end
end
