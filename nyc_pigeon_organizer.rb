require 'pry'
def nyc_pigeon_organizer(data)
  # write your code here!
    data.each_with_object({}) do |(key, info), answer|
      #binding.pry
	    info.each do |value, names|
      names.each do |name|
        answer[name] ||= {}
        answer[name][key] ||= []
        answer[name][key] << value.to_s
      end
    end
  end
end