class SpecificationsController < ApplicationController

  def index
    render json: Specification.all, status: :ok
  end


  def show
    specification = Specification.find(params[:id])
    render json: specification , status: 200
  end


  
  def create
    begin
    device = Device.find(params[:device_id])
   
    specification = device.specification.create(spec_params)
    # if @specification.save
    #   render json: @specification
    # else
    #   render error: {error: 'Unable to create a brand'}, status: 400
    # end
  rescue ActiveRecord::RecordNotFound => e

      render json: e, status: 404
    end
    
  end
  def update
    specification = Specifications.find(params[:id])
    if specification.update(brand_params)
      render json: "Updeted successfully"
    else
      render json:{
        error: "Device not found"
      }
    end
  end
   
  def showspecification
    device = Device.find(params[:device_id])
    specification = Specification.find_by_device_id(params[:device_id])
    render json: SpecificationSerializer.new(specification).as_json.merge(image: url_for(device.img)), status: :ok

  end

  


  
  
  
   def destroy
    specification = Specification.find(params[:id])
    if specification.destroy
      render json: "Specification has been deleted"
    end
   end

   private

   def spec_params
    params.permit(:camera, :processor, :ram, :storage, :battery, :os_type, :device_id)
   end

  end
