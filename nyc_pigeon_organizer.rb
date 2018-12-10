def nyc_pigeon_organizer(data)
  # write your code here!
  new_hash = {}
  birds_list = []
  data.each do |attr, options|
    options.each do |option, birds|
      birds.each do |bird|
        birds_list << bird
      end
    end
  end
  birds_list = birds_list.uniq
  birds_list.each do |bird|
    new_hash[bird] = {:color => [], :gender => [], :lives => []}
  end
  data.each do |attr, options|
    options.each do |option, birds|
      birds.each do |bird|
        new_hash[bird][attr] << option.to_s
      end
    end
  end
  new_hash
end
