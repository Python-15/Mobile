class DevicesController < ApplicationController
  def index
    render json: Device.all, status: :ok
  end
  def show
    @device = Device.find(params[:id])
    render json: @device , status: 200
  end
  def new
    @device =Device.new
  end
  
  def create
    @device =Device.new(device_params)
    if @device.save
      render json: @device, status: 200
    else
       render json: {
        error: " error while crearting "
       }
  end
end
  def update
    @device = Device.find(params[:id])
    if @device.update(brand_params)
      render json: "Updeted successfully"
    else
      render json:{
        error: "Device not found"
      }
    end
  end
   def destroy
    @device = Device.find(params[:id])
    if @device.delete
      render json: "Device has been deleted"
    end
   end
   private
   def device_params
    params.require(:device).permit(:phone_name, :model_no, :mrp, :sp, :availability_status, imei)
   end

end
