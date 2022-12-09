class DevicesController < ApplicationController

  def index
   devices =Device.all
   render json:DeviceSerializer.new(devices)
end 

  def show
    device = Device.find_by_id(params[:id])
    if device.img.attached? 
      render json:DeviceSerializer.new(device)
   else 
     render json:DeviceSerializer.new(device)
    end
end

  
  def showallphonesbybrand
    
    brand = Brand.find_by_name(params[:name])
  
    devices = brand.devices.all
    render json: DeviceSerializer.new(devices)
  end

   def searchbynames
   
    device = Device.find_by_phone_name(params[:phone_name])
    render json:DeviceSerializer.new(device) , status: :ok
   end
   
   def availablephone
 
    brand = Brand.find_by_name(params[:name])
    
    device = brand.devices.where(availability_status: true)
  

    render json:DeviceSerializer.new(device)

   end
  def searchbypricerange
    
    device = Device.where(sp:(params[:min_price]..params[:max_price]))
    render json:DeviceSerializer.new(device)
  end
  


  def create
    device = Device.new(device_params)
    if device.save
      render json: device
    else
      render error: {error: 'Unable to create a device'}, status: 400
    end
  end
  

  def update
    device = Device.find(params[:id])
    if device.update(device_params)
      render json:DeviceSerializer.new(device),status: :ok
    else
      render json:{
        error: "Device not found"
      }
    end
  end
    

   def destroy
    device = Device.find(params[:id])
    if device.delete
      render json: "Device has been deleted"
    end
   end

   private

   def device_params
    params.permit(:phone_name, :model_no, :mrp, :sp, :availability_status, :image, :imei, :brand_id, :img)
   end

  end
