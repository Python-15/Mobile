Brand.destroy_all

Brand.create!([{
    name: "Smasung" ,
    country_of_origin: "south korea"
  
},
{
    name: "Mi",
    country_of_origin: "China"
},

{
    name: "one-plus",
    country_of_origin: "China"
    }])

    p "Created #{Brand.count} brands"