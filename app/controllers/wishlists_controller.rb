class WishlistsController < ApplicationController
  def index
    @wishlists = Wishlist.all
  end
def show
  @wishlist = Wishlist.find(params[:id])
end
def new
  @wishlist = Wishlist.new
end
def create
  @wishlist = Wishlist.new(merchant_id: current_merchant.id, product_id: (params[:id]))
  if @wishlist.save
    redirect_to wishlists_path, notice: "Wishlist was successfully created."
  else
    render :new
  end
end
def edit
  @wishlist = Wishlist.find(params[:id])
end
def update
  @wishlist = Wishlist.find(params[:id])
  if @wishlist.update(wishlist_params)
    redirect_to wishlist_path(@wishlist), notice: "Wishlist was successfully updated."
  else
    render :edit
  end
end
def destroy
  @wishlist = Wishlist.find(params[:id])
  @wishlist.destroy
  redirect_to wishlists_path, notice: "Wishlist was successfully destroyed."
end
  private
    def wishlist_params
      params.require(:wishlist).permit(:product_id, :merchant_id)
    end
end