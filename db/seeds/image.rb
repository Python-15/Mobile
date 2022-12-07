photos = ["phone.jpeg","phone2.jpeg","phone3.jpeg","phone4.jpeg","phone4.jpeg","phone4.jpeg","one_plus.jpeg","one_plus.jpeg","one_plus.jpeg"]
device = Device.ids
device.each do |i|
    
device = Device.img.attach(io: File.open(File.join(Rails.root,"app/assets/images/#{photos[i]}")), filename: "#{photos[i]}")
end