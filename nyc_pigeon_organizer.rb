def nyc_pigeon_organizer(data)
  # Fills pigeon_list with names as keys and empty hashes as values
  # ex. {"Theo" => {}, "Peter Jr" => {}, ...}
  pigeon_list = {}
  data.each do |type_keys, type_value_hash|
    type_value_hash.each do |key, names_array|
      names_array.each do |name|
        if pigeon_list[name] == nil
          pigeon_list[name] = {}
        end
        if pigeon_list[name][type_keys] == nil
          pigeon_list[name][type_keys] = []
        end
        pigeon_list[name][type_keys] << key.to_s
      end
    end
  end
  pigeon_list
end
