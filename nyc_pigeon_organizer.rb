
require "pry"

def nyc_pigeon_organizer(data)
  new_hash = {}

  data.each do |attribute, options|
    options.each do |option, pigeons_name|
      pigeons_name.each do |pigeon_name|
        new_hash[pigeon_name] ||= {}
        new_hash[pigeon_name][attribute] ||= []
        new_hash[pigeon_name][attribute] << option.to_s
      end
    end
  end
  new_hash
end