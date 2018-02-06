class ProductsController < ApplicationController

  def index
    @products = Product.order("updated_at DESC")
  end
  
  def show
    @product = Product.where(id: params[:id]).first
  end
  
  def create
    @product = Product.new(product_params)
    
    if @product.save
      redirect_to admin_products_path
    else
      render :new
    end
  end
  
  private
  
  def product_params
    params.require(:product).permit(:name, :description, :price)
  end
end