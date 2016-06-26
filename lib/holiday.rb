require 'pry'

def second_supply_for_fourth_of_july(holiday_hash)
  holiday_hash[:summer][:fourth_of_july][1]


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
end

def add_supply_to_winter_holidays(holiday_hash, supply)
  holiday_hash[:winter].each {|holiday, stuff| stuff.push(supply)}

end


def add_supply_to_memorial_day(holiday_hash, supply)
  holiday_hash[:spring][:memorial_day].push(supply)
end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  holiday_hash[season][holiday_name] = supply_array
  holiday_hash
  end

def all_winter_holiday_supplies(holiday_hash)
  winter_supplies = holiday_hash[:winter].collect{|holiday, stuff| stuff}.flatten
end

def all_supplies_in_holidays(holiday_hash)
  def stringifier(key)
    string = key.to_s
    string = string.split("")
    string[0] = string[0].upcase
    string.each_with_index do |character, index|
      if character == "_"
        string[index] = " "
        string[index + 1] = string[index + 1].upcase
      end
    end

    string.join("")
  end

  def array_to_s(array)
    array_string = ""
    array.each do |item|
      if item != array[-1]
        array_string = array_string + "#{item}, "
      else
        array_string = array_string + item
      end
    end
    array_string
  end


  holiday_hash.each do |season, holiday|
    puts "#{stringifier(season)}:"
    holiday.each do |holiday, stuff|
      puts "  #{stringifier(holiday)}: #{array_to_s(stuff)}"
    end
  end
end

def all_holidays_with_bbq(holiday_hash)
  barbecues = []
  holiday_hash.each do |season, holiday|
    holiday.each do |holiday, stuff|
    if stuff.include?("BBQ")
      barbecues << holiday
    end
    end
  end

  barbecues

end  # return an array of holiday names (as symbols) where supply lists
  # include the string "BBQ"
