require 'pry'

# def second_supply_for_fourth_of_july(holiday_hash)
  
  def second_supply_for_fourth_of_july(holiday_supplies)
     holiday_supplies.each do |season, holiday_array|
      if season == :summer
        holiday_array.each do |holiday_name, holiday_supplies|
          return holiday_supplies[1]
        end
     end
  end
# end
second_supply_for_fourth_of_july(holiday_supplies)
end

def add_supply_to_winter_holidays(holiday_hash, supply)
    # holiday_hash is identical to the one above 
    # add the second argument, which is a supply, to BOTH the 
    # Christmas AND the New Year's arrays
      holiday_hash.each do |season, holidays|
      if season == :winter
      holiday_hash[season].each do |holiday, array|
      holiday_hash[season][holiday] << supply
      end 
    end
  end
  holiday_hash
end
 

def add_supply_to_memorial_day(holiday_hash, supply)
#   # again, holiday_hash is the same as the ones above
#   # add the second argument to the memorial day array
#   holiday_hash[:spring][:memorial_day] << supply
  holiday_hash.each do |season, holidays|
      if season == :spring
       holiday_hash[season].each do |holiday, array|
       holiday_hash[season][holiday] << supply
      end
    end
  end
    holiday_hash
end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
#   # code here
#   # remember to return the updated hash
# binding.pry
    holiday_hash[season][holiday_name] = supply_array
    holiday_hash
end


def all_winter_holiday_supplies(holiday_supplies)
  holiday_supplies[:winter].values.flatten
  #   v
  # end.flatten
end




def all_supplies_in_holidays(holiday_hash)
  holiday_supplies.each do |season, holidays|
    puts "#{season.capitalize}:"
    holidays.each do |holiday, supplies|
      puts"  #{holiday.to_s.split('_').map {|w| w.capitalize }.join(' ') }: #{supplies.join(", ")}"
    end
  end
end

# def all_supplies_in_holidays(holiday_name)
#    holiday_name.to_s.split("_").map do |word|
#    word.capitalize
#    end.join(" ")
# end



def all_holidays_with_bbq(holiday_hash)
#   # return an array of holiday names (as symbols) where supply lists
#   # include the string "BBQ"
  holiday_hash.map do |season, holidays|
  holidays.map do |holiday, supplies|
    holiday if supplies.include?("BBQ")
    end
  end.flatten.compact
end







