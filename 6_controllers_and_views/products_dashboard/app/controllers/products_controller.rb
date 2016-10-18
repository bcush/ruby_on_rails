class ProductsController < ApplicationController
  def index
    @products = Product.all
    render "index"
  end

  def show
    @product = Product.find(params[:id])
    render "show"
  end

  def new
    @product = Product.new
  end

  def edit
    product = Product.find(params[:id])
    render "edit"
  end

  def create
    @product = Product.new(product_params)
    if @product.save
      flash[:message] = "Product successfully saved."
      redirect_to "/products"
    else
      flash[:message] = "Product not saved."
      redirect_to "/products"
    end
  end

  def update
    product = Product.find(params[:id])
    product.name = params[:name]
    product.description = params[:description]
    product.pricing = params[:price]
    if (product.save)
      redirect_to '/products'
    else
      flash[:message] = product.errors.full_messages
      redirect_to :back
    end
  end

  def destroy
    Product.find(params[:id]).destroy
    redirect_to '/products'
  end

  def product_params
    if params[:product]
      params.require(:product).permit(:name, :description, :pricing)
    end
  end

end
