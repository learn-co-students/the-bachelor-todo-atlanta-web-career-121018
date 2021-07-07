require "pry"

def get_first_name_of_season_winner(data, season)
  data[season].each do |profile|
    profile.each do |attribute, info|
      if info == "Winner"
        full_name = profile["name"]
        return full_name.split(" ")[0]
      end
    end
  end
end

def get_contestant_name(data, occupation)
  data.each do |season, array|
    array.each do |profile|
      profile.each do |attribute, info|
        if info == occupation
          return profile["name"]
        end
      end
    end
  end
end

def count_contestants_by_hometown(data, hometown)
  i = 0
  data.each do |season, array|
    array.each do |profile|
      profile.each do |attribute, info|
        if info == hometown
          i += 1
        end
      end
    end
  end
  return i
end

def get_occupation(data, hometown)
  data.each do |season, array|
    array.each do |profile|
      profile.each do |attribute, info|
        if info == hometown
          return profile["occupation"]
        end
      end
    end
  end
end

def get_average_age_for_season(data, season)
  age = 0
  i = 0

  data[season].each do |profile|
    profile.each do |attribute, info|
      if attribute == "age"
        age += info.to_f
        i += 1
      end
    end
  end
  average = (age/i).round
  return average
end
