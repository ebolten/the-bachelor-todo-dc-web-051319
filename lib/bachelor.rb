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
  data.each do |season, info|
      info.each do |element|
        element.each do |key, value|
          if key.to_s == "name"
            name = value.to_s
          end
          if key.to_s == "occupation"
            if value.to_s == occupation
              return name
            end
          end
        end
      end
    end
end


def count_contestants_by_hometown(data, hometown)
  # code here
  count = 0
  data.each do |season, info|
      info.each do |element|
        element.each do |key, value|
          if key.to_s == "hometown"
            if value.to_s == hometown
              count += 1
            end
          end
        end
      end
    end
    return count
end


def get_occupation(data, hometown)
  # code here
  occupation = nil
  newHometown = nil

  data.each do |season, info|
      info.each do |element|
        element.each do |key, value|
          if key.to_s == "hometown"
            if hometown.to_s == value.to_s
              newHometown = hometown
            end
          end
          if key.to_s == "occupation" && newHometown == hometown
            occupation = value.to_s
            return occupation
          end
        end
      end
    end
  end


def get_average_age_for_season(data, season)
  # code here
  averageAge = 0
  count = 0
  data.each do |userSeason, info|
      if userSeason.to_s == season
        info.each do |element|
          element.each do |key, value|
            if key.to_s == "age"
              averageAge += value.to_i + 1
              count += 1
            end
          end
        end
      end
    end
  return (averageAge / count).to_f
end



#hi
