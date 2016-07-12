require 'pry'

def second_supply_for_fourth_of_july(holiday_supplies)
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
  # return the second element in the 4th of July array
  holiday_supplies[:summer][:fourth_of_july][1]
end

def add_supply_to_winter_holidays(holiday_supplies, supply)
  # holiday_hash is identical to the one above 
  # add the second argument, which is a supply, to BOTH the 
  # Christmas AND the New Year's arrays

  holiday_supplies[:winter][:christmas]<< supply
  holiday_supplies[:winter][:new_years]<< supply
end
 

def add_supply_to_memorial_day(holiday_supplies, supply)
  # again, holiday_hash is the same as the ones above
  # add the second argument to the memorial day array
  holiday_supplies[:spring][:memorial_day] << supply 
end

def add_new_holiday_with_supplies(holiday_supplies, season, holiday_name, supply_array)
  # code here
  # remember to return the updated hash
holiday_supplies[season] = {holiday_name => supply_array}

holiday_supplies
end

def all_winter_holiday_supplies(holiday_supplies)
  # return an array of all of the supplies that are used in the winter season
  holiday_supplies[:winter].values.flatten
end

def all_supplies_in_holidays(holiday_supplies)
  # iterate through holiday_hash and print items such that your readout resembles:
  # Winter:
  #   Christmas: Lights, Wreath
  #   New Years: Party Hats
  # Summer:
  #   Fourth Of July: Fireworks, BBQ
  # etc.
    holiday_supplies.each do |key, value|
      puts "#{key.to_s.capitalize}:"
        value.each do |x, y|
         puts "  #{x.to_s.split("_").map {|string|string.capitalize}.join(" ")}: #{y.join(", ")}"

        end
    end  
end

def all_holidays_with_bbq(holiday_supplies)
  # return an array of holiday names (as symbols) where supply lists
  # include the string "BBQ"
  array = []
  holiday_supplies.map do |season, holidays|
    holidays.map do |holiday, supplies|
      if supplies.include?("BBQ")
        array << holiday
      end
    end  
  end
  array
end







