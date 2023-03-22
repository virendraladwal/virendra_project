class ProductimagesController < ApplicationController

  def index
    @productimages = Productimage.all
  end
  
  def show
    @productimage = Productimage.find(params[:id])
  end   
  def new
    @productimage = Productimage.new
  end

  def create
    @productimage = Productimage.new(productimage_params)

    if @productimage.save
      redirect_to @productimage
    else
      render :new, status: :unprocessable_entity
    end
  end

  
  def edit
    @productimage = Productimage.find(params[:id])
  end

  def update
    @productimage = Productimage.find(params[:id])

    if @productimage.update(productimage_params)
      redirect_to @productimage
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @productimage = Productimage.find(params[:id])
    @productimage.destroy

    redirect_to root_path, status: :see_other
  end

  
  
  private

    def productimage_params
      params.require(:productimage).permit(:image)
    end

end
