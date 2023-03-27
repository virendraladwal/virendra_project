class CartsController < ApplicationController

 
    def index
     @carts = Cart.all
    end

    def show
      @cart = Cart.find(params[:id])
    end

    def new
     @cart = Cart.new
    end

    def cart
      @cart = Cart.new(product_id: params[:id], merchant_id: current_merchant.id, qty: 1)
      @cart.save!
      redirect_to products_path, notice: 'Added to Cart'
    end
     

    def destroy
     @cart = Cart.find(params[:id])
      @cart.destroy
    end
    
    private
  
      def carts_params
        params.require(:cart).permit(:qty,  :merchant_id, :product_id)
      end
  
  end
  