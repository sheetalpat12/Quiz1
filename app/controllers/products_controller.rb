class ProductsController < ApplicationController

    def index
      @products = Product.all
    end

   
    def new
      @product = Product.new
    end

    def create
      @product = Product.create(product_params)

        if @product.invalid?
            flash[:error] = '<strong>Could not save</strong> the data you entered is invalid.'
        end
        redirect_to root_path
    end

    private

    def product_params
      params.require(:product).permit(:name, :description)
    end
end
