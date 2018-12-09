require 'pry'
def nyc_pigeon_organizer(data)
  # write your code here!
  result = {}

  data.each do |attributes, types|
    types.each do |kind, names|
        names.each do |name|
          if result[name].nil?
            result[name] = {}
          end
          if result[name][attributes].nil?
            result[name][attributes] = []
          end
          result[name][attributes] << kind.to_s
      end
    end
  end
result
end