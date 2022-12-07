class BrandsController < ApplicationController
  def index
    render json: Brand.all, status: :ok
  end
  
  def show
    brand = Brand.find(params[:id])
    render json: brand , status: 200
  end
  
  
  def create
    brand = Brand.new(brand_params)
    if brand.save
      render json: brand
    else
      render error: {error: 'Unable to create a brand'}, status: 400
    end
  end

  def update
    brand = Brand.find(params[:id])
    if brand.update(brand_params)
      render json: brand
    else
      render json:{
        error: "Barnd not found"
      }
    end
  end
   def destroy
    brand = Brand.find(params[:id])
    if brand.destroy
      render json: "Brand has been deleted"
    end
   end
   private
   def brand_params
    params.permit(:name, :country_of_origin)
   end

end
