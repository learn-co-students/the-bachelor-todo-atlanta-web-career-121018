
def get_first_name_of_season_winner(data, season)
  data[season].each do |contestant_hash|
    if contestant_hash["status"] == "Winner"
      return contestant_hash["name"].split(" ")[0]
    end
  end
end

def get_contestant_name(data, occupation)
  data.each do |season, contestants_array|
    contestants_array.each do |contestant_hash|
      if contestant_hash["occupation"] == occupation
        return contestant_hash["name"]
      end
    end
  end
end

def count_contestants_by_hometown(data, hometown)
  counter = 0
  data.each do |season, contestants_array|
    contestants_array.each do |contestant_hash|
      if contestant_hash["hometown"] == hometown
        counter += 1
      end
    end
  end
  counter
end

def get_occupation(data, hometown)
  data.each do |season, contestants_array|
    contestants_array.each do |contestant_hash|
      if contestant_hash["hometown"] == hometown
        return contestant_hash["occupation"]
      end
    end
  end
end

def average(array)
  (array.inject(:+).to_f / array.size).round
end

def get_average_age_for_season(data, season)
  all_ages = data[season].map do |contestant_hash|
    contestant_hash["age"].to_i
  end
  average(all_ages)
end
