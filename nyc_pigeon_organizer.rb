require 'pry'

def nyc_pigeon_organizer(data)
  pigeon_list = {}

  data.each do |trait_type, trait_hash|
    trait_hash.each do |trait, names_array|
      names_array.each do |name|
        
        unless pigeon_list.has_key?(name)
          pigeon_list[name] = {}
        end
        
        unless pigeon_list[name].has_key?(trait_type)
          pigeon_list[name][trait_type] = []
        end
          
        unless pigeon_list[name][trait_type].include?(trait)
          pigeon_list[name][trait_type] << trait.to_s
        end
        
      end
    end
  end
  pigeon_list
end
