def get_first_name_of_season_winner(data, season)
  # code here
  name = nil
  data.each do |userSeason, info|
      if userSeason.to_s == season
        info.each do |element|
          element.each do |key, value|
            if key.to_s == "name"
            name = value.to_s
          end
            if key.to_s == "status"
              if value.to_s == "Winner"
                index = name.index(" ")
                name = name[0..index - 1]
                return name
              end
            end
          end
        end
    end
  end
end


def get_contestant_name(data, occupation)
  # code here
  name = nil
  data.each do |userSeason, info|
      if userSeason.to_s == season
        info.each do |element|
          element.each do |key, value|
            if key.to_s == "name"
            name = value.to_s
          end
            if key.to_s == "occupation"
              if value.to_s == occupation
                index = name.index(" ")
                name = name[0..index - 1]
                return name
              end
            end
          end
        end
    end
  end
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
