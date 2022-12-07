
#camera = [12 ,50 ,30, 8 ,32 ,16 ,12 ,50 ,30 ]
processor = ["SD-777", "SD-865","SD-765", "SD-675", "SD-775", "SD-765", "SD-675","SD-865","SD-8G"]
#ram = ["6-GB","6-GB","6-GB","4-GB","6-GB","8-GB","6-GB","6-GB","8-GB"]
#battery =[ "4500 mAh","3700 mAh","4700 mAh","4500 mAh","5200 mAh","5400 mAh","4500 mAh","5200 mAh","5400 mAh"]
operating_system =["android-10", "android-11","android-12","android-10", "android-11","android-12","android-10", "android-11","android-12"]


device = Device.ids
$i =0
 device.each do |did|
    Specification.create!([{
 camera: Faker::Number.number(digits: 2),
 processor: processor[$i],
 ram: Faker::Number.digit ,
 storage: 128 ,
 battery: Faker::Number.number(digits: 3),
 os_type: operating_system[$i],
 device_id: did
}])
$i +=1
 end
 p "Created #{Specification.count} specification"