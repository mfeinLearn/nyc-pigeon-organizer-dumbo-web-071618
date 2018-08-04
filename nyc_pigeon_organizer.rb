require 'pry'
# def nyc_pigeon_organizer(data)
#   # write your code here!
#   pigeon_list = {}
#     data.each do |key, something|
#       #binding.pry
#         pigeon_list["Theo"] = {
#     :color => ["purple", "grey"],
#     :gender => ["male"],
#     :lives => ["Subway"]
#   }
      
#         pigeon_list["Peter Jr."] = {
#     :color => ["purple", "grey"],
#     :gender => ["male"],
#     :lives => ["Library"]
#   }
        
#         pigeon_list["Lucky"] = {
#     :color => ["purple"],
#     :gender => ["male"],
#     :lives => ["Central Park"]
#   }
        
#         pigeon_list["Ms. K"] = {
#     :color => ["grey", "white"],
#     :gender => ["female"],
#     :lives => ["Central Park"]
#   }
      
#         pigeon_list["Queenie"] = {
#     :color => ["white", "brown"],
#     :gender => ["female"],
#     :lives => ["Subway"]
#   }
        
#         pigeon_list["Andrew"] = {
#     :color => ["white"],
#     :gender => ["male"],
#     :lives => ["City Hall"]
#   }
        
#         pigeon_list["Alex"] = {
#     :color => ["white", "brown"],
#     :gender => ["male"],
#     :lives => ["Central Park"]
#   }
      
        
#           #binding.pry
#     end
#     pigeon_list
# end

def nyc_pigeon_organizer(data)
  data.each_with_object({}) do |(key, h), result|
    h.each do |value, names|
      names.each do |name|
        result[name] ||= {}
        result[name][key] ||= []
        result[name][key] << value.to_s
      end
    end
  end
end
