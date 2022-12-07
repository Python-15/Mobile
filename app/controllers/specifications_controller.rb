class SpecificationsController < ApplicationController
  def index
    render json: Specification.all, status: :ok
  end
  def show
    @specification = Specification.find(params[:id])
    render json: @specification , status: 200
  end
  def new
    @specification =Specification.new
  end
  
  def create
    @specification =Specification.new(device_params)
    if @specification.save
      render json: @specification, status: 200
    else
       render json: {
        error: " error while crearting "
       }
  end
end
  def update
    @specification = Specifications.find(params[:id])
    if @specification.update(brand_params)
      render json: "Updeted successfully"
    else
      render json:{
        error: "Device not found"
      }
    end
  end
   def destroy
    @specification = Specification.find(params[:id])
    if @specification.destroy
      render json: "Specification has been deleted"
    end
   end
   private
   def device_params
    params.require(:device).permit(:phone_name, :model_no, :mrp, :sp, :availability_status, imei)
   end

end
