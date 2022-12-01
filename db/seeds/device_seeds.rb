require 'faker'

phone_name = ["A50" ,"S22","S21", "Note-7" , "Note-8" ,"Note-9","OnePlus-7", "OnePlus-8", "OnePlus-9" ]
mrp= [30000 ,70000 ,57999 ,27999 ,38799 , 45799 ,32999, 37999,51000]
selling_price =[27999 ,68999 ,40000 , 25000,37000, 45000, 32000,35000,47999]
availability_status =[true,true,true,true,true,true,true,true,true]

imei =[123456789012345,123456789012340,123400000012340,999912345677123,123456789012321,123456789012300,978456789012345, 321456789012345, 123456789012920]

brand =Brand.ids
 $i =0
 brand.each do |obj|
   Device.create!([{
      phone_name: phone_name[$i],
      model_no: Faker::Alphanumeric.alphanumeric(number: 6),
      mrp: mrp[$i],
      sp: selling_price[$i],
      availability_status: availability_status[$i],
       image: "",
       #imei: Faker::Number.number(15),
       imei: imei[$i],
       brand_id: obj },
       {
         phone_name: phone_name[$i+1],
       model_no: Faker::Alphanumeric.alphanumeric(number: 6),
       mrp: mrp[$i+1],
       sp: selling_price[$i+1],
       availability_status: availability_status[$i+1],
        image: "",
        imei: imei[$i+1],
        brand_id:  obj },

        {
         phone_name: phone_name[$i+2],
      model_no: Faker::Alphanumeric.alphanumeric(number: 6),
      mrp: mrp[$i+2],
      sp: selling_price[$i+2],
      availability_status: availability_status[$i+2],
       image: "",
       imei: imei[$i+2],
       brand_id: obj 
 
   }])
   $i +=3
 end
p "Created #{Device.count} device"