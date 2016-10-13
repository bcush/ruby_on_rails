class ProductsController < ApplicationController
  def index
    @products = Product.all
    render json: @products
  end

  def create
    @product = Prouct.create(name: params[:name], description: params[:description])
    redirect_to '/products/index'
  end
end
