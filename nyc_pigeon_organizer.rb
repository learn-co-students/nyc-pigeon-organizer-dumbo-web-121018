# def nyc_pigeon_organizer(data)
#   # write your code here!
#   pigeon_list = Hash.new(0)
#   data.each do |traits, sub_traits| # traits are color gender and lives symbol
#     sub_traits.each do |key, value|
#       value.each do |name|
#         pigeon_list[name] = { color: [], gender: [], lives: [] }
#         # created the general key value structure, now gotta put in values
#       end
#     end
#   end
#   pigeon_list.each do |traits2, sub_traits2| #traits 2 is the names
#     sub_traits2.each do |key2, value2| # key2 is the color gender lives
#       data.each do |traits, sub_traits|
#         sub_traits.each do |key, value|
#           if (value.include?(traits2)) && (key2 == traits) # if the value of the org hash has the key in it
#             value2 << key.to_s
#           end
#         end
#       end
#     end
#   end
#   return pigeon_list
# end

def nyc_pigeon_organizer(data)
  pigeon_list = {}
  data.each do |trait, attributes|
    attributes.each do |details, names|
      names.each do |name|
        pigeon_list[name] ||= {}
        pigeon_list[name][trait] ||= []
        pigeon_list[name][trait] << details.to_s
      end
    end
  end
  return pigeon_list
end
