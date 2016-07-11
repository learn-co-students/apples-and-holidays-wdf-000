require 'pry'

def second_supply_for_fourth_of_july(holiday_hash)
  # given that holiday_hash looks like this:
  # {
  #   :winter => {
  #     :christmas => ["Lights", "Wreath"],
  #     :new_years => ["Party Hats"]
  #   },
  #   :summer => {
  #     :fourth_of_july => ["Fireworks", "BBQ"]
  #   },
  #   :fall => {
  #     :thanksgiving => ["Turkey"]
  #   },
  #   :spring => {
  #     :memorial_day => ["BBQ"]
  #   }
  # }

  holiday_hash.each do |season, holiday|
		holiday.each do |theHoliday, supply|
			return supply[1] if theHoliday.to_s == "fourth_of_july"
		end
	end

  # return the second element in the 4th of July array
end

def add_supply_to_winter_holidays(holiday_hash, supply)
  # holiday_hash is identical to the one above
  # add the second argument, which is a supply, to BOTH the
  # Christmas AND the New Year's arrays

  holiday_hash.each do |season, holiday|
		holiday.each do |theHoliday, theSupply|
			if theHoliday.to_s == "christmas" || theHoliday.to_s == "new_years"
        theSupply << supply
      end
		end
	end

end


def add_supply_to_memorial_day(holiday_hash, supply)
  # again, holiday_hash is the same as the ones above
  # add the second argument to the memorial day array
  holiday_hash.each do |season, holiday|
		holiday.each do |theHoliday, theSupply|
			theSupply << supply if theHoliday.to_s == "memorial_day"
		end
	end
end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  # code here
  # remember to return the updated hash
  holiday_hash[season][holiday_name] = supply_array
  holiday_hash
end

def all_winter_holiday_supplies(holiday_hash)
  # return an array of all of the supplies that are used in the winter season
  holiday_hash.collect do |season, holiday|
    holiday.collect do |theHoliday, theSupply|
      if theHoliday.to_s == "christmas" || theHoliday.to_s == "new_years"
        theSupply
      end
    end
  end.flatten
end

def all_supplies_in_holidays(holiday_hash)
  # iterate through holiday_hash and print items such that your readout resembles:
  # Winter:
  #   Christmas: Lights, Wreath
  #   New Years: Party Hats
  # Summer:
  #   Fourth Of July: Fireworks, BBQ
  # etc.

  holiday_hash.collect do |season, holiday|
    puts "#{season.to_s.capitalize}:"
    holiday.collect do |theHoliday, theSupply|
      # binding.pry
      puts "  #{theHoliday.to_s.split("_").collect{|x| x.capitalize}.join(" ")}: #{theSupply.join(", ")}"
    end
  end

end

def all_holidays_with_bbq(holiday_hash)
  # return an array of holiday names (as symbols) where supply lists
  # include the string "BBQ"
  holiday_hash.collect do |season, holiday|
    holiday.collect do |theHoliday, theSupply|
      theHoliday if theSupply.include?("BBQ")
    end
  end.flatten.compact
end
