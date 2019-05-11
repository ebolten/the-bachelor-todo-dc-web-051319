def get_first_name_of_season_winner(data, season)
  # code here
  data[season].each do |data|

      if data[season][data] == "Winner"
        name = data[season]["name"]
        index = name.index(" ")
        name = name[0..index]
        return name
    end
  end
end


def get_contestant_name(data, occupation)
  # code here
end

def count_contestants_by_hometown(data, hometown)
  # code here
end

def get_occupation(data, hometown)
  # code here
end

def get_average_age_for_season(data, season)
  # code here
end
