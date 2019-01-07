def get_first_name_of_season_winner(data, season)
  data.each do |szn, array|
    if szn == season
      array.each do |person|
        person.each do |attribute, value|
          if person["status"] = "Winner"
            win_name = person["name"].split(" ")[0]
            return win_name
          end
        end
      end
    end
  end
end

def get_contestant_name(data, occupation)
  data.each do |szn, array|
    array.each do |person|
      person.each do |attribute, value|
        if person["occupation"] == occupation
          ans_name = person["name"]
          return ans_name
        end
      end
    end
  end
end

def count_contestants_by_hometown(data, hometown)
  count = 0
  data.each do |szn, array|
    array.each do |person|
      if person["hometown"] == hometown
        count += 1
      end
    end
  end
  return count
end

def get_occupation(data, hometown)
  data.each do |szn, array|
    array.each do |person|
      if person["hometown"] == hometown
        ans_occ = person["occupation"]
        return ans_occ
      end
    end
  end
end

def get_average_age_for_season(data, season)
  count_num = 0
  count_age = 0
  data.each do |szn, array|
    if szn == season
      array.each do |person|
        count_num += 1
        count_age += person["age"].to_i
      end
    end
  end
  avg = count_age / count_num.to_f
  return avg.round

end
