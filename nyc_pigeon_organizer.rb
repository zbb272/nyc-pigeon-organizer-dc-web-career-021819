def nyc_pigeon_organizer(data)
  new_hash = {}
  
  data.each do | top_level, top_data |
    top_data.each do | attribute, name_array |
      name_array.each do | name |
        new_hash[name] = {}
      end 
    end 
  end 
  
  new_hash.each do | name, empty_hash |
    data.each do | attribute, value |
      empty_hash[attribute] = []
      value.each do | key, name_array |
        name_array.each do | name_inside |
          if name_inside == name 
            empty_hash[attribute] << key.to_s 
          end 
        end 
      end 
    end 
  end 
  
  new_hash
end

# pigeon_data = {
#         :color => {
#           :purple => ["Theo", "Peter Jr.", "Lucky"],
#           :grey => ["Theo", "Peter Jr.", "Ms. K"],
#           :white => ["Queenie", "Andrew", "Ms. K", "Alex"],
#           :brown => ["Queenie", "Alex"]
#         },
#         :gender => {
#           :male => ["Alex", "Theo", "Peter Jr.", "Andrew", "Lucky"],
#           :female => ["Queenie", "Ms. K"]
#         },
#         :lives => {
#           "Subway" => ["Theo", "Queenie"],
#           "Central Park" => ["Alex", "Ms. K", "Lucky"],
#           "Library" => ["Peter Jr."],
#           "City Hall" => ["Andrew"]
#         }