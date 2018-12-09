require 'pry'

def nyc_pigeon_organizer(data)
  pigeon_list = {}

  data.each do |info_type,info_hash|
  #binding.pry
    info_hash.each do |spec,names_arr|
      names_arr.each do |name|
        if pigeon_list[name] == nil
          pigeon_list[name] = {}
          pigeon_list[name][info_type] = []
        elsif pigeon_list[name][info_type] == nil
          pigeon_list[name][info_type] = []
        end
        pigeon_list[name][info_type] << spec.to_s
      end
    end
  end

  return pigeon_list
end
