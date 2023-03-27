class OrdersController < InheritedResources::Base

  def index
    @orders = Order.all
  end
  def show
    @order = Order.find(params[:id])
  end
  def create
    @order = Order.new(product_id: Cart.find(params[:id]).product.id, merchant_id: current_merchant.id, cart_id: params[:id], status: "Pending")
    @order.save!
    redirect_to orders_path, notice: "Order added succesfully...!"
  end
  def destroy
    @order = Order.find(params[:id])
    @order.destroy
    redirect_to orders_path, notice: "Order Cancelled"
  end


  
  private

    def order_params
      params.require(:order).permit(:status, :product_id, :cart_id, :merchant_id)
    end

end
