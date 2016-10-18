class ProductsController < ApplicationController
  def index
    @products = Product.all
  end

  def show
    @product = Product.find(params[:id])
    @comments = Product.find(params[:id]).comments
  end

  def new
    @categories = Category.all
  end

  def edit
    @product = Product.find(params[:id])
    @categories = Category.all
  end

  def create
    product = Product.new(category: Category.find(params[:category]), name: params[:name], description: params[:description], pricing: params[:pricing])
    if product.save
      flash[:message] = "Product saved!"
    else
      flash[:message] = "Product not saved :("
    end
    redirect_to "/products"
  end


  def update
    product = Product.find(params[:id])
    product.update(category: Category.find(params[:category]), name: params[:name], description: params[:description], pricing: params[:pricing])
    redirect_to "/products"
  end

  def destroy
    Product.find(params[:id]).destroy
    redirect_to :back
  end
end
