class Admin::ProductsController < Admin::BaseController
  
    def index
      @products = Product.order("updated_at DESC")
    end
    
    def new
      @product = Product.new
    end
    
    def create
      @product = Product.new(product_params)
      
      if @product.save
        redirect_to admin_products_path
      else
        render :new
      end
    end
    
    def show
      @product = Product.where(id: params[:id]).first
    end
    
    def edit
      @product = Product.where(id: params[:id]).first
    end
    
    def update
      @product = Product.where(id: params[:id]).first
      
      if @product.update_attributes(product_params)
        redirect_to admin_products_path
      else
        render :update
      end
    end
    
    def destroy
      @product = Product.where(id: params[:id]).first
      
      if @product.destroy
        redirect_to admin_products_path
      else
        render :update
      end
    end
    
    private
    
    def product_params
      params.require(:product).permit(:name, :description, :price)
    end
end