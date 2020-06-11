def nyc_pigeon_organizer(data)
  pigeon_list = {}
  data.each do |key, value|
    value.each do |info, all_names|
      all_names.each do |name|
        if !pigeon_list[name]
          pigeon_list[name] = {}
        end
        if !pigeon_list[name][key]
          pigeon_list[name][key] = []
        end
        pigeon_list[name][key].push(info.to_s)
      end
    end 
  end
  pigeon_list
end
