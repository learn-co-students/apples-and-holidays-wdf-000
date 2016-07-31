require 'pry'

def second_supply_for_fourth_of_july(holiday_hash)
  holiday_hash[:summer][:fourth_of_july][1]
end


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


def add_supply_to_winter_holidays(holiday_hash, supply)
  # holiday_hash is identical to the one above
  # add the second argument, which is a supply, to BOTH the
  # Christmas AND the New Year's arrays
  holiday_hash[:winter][:christmas].insert(0, supply)
  holiday_hash[:winter][:new_years].insert(0, supply)

end


def add_supply_to_memorial_day(holiday_hash, supply)
  # again, holiday_hash is the same as the ones above
  # add the second argument to the memorial day array
  holiday_hash[:spring][:memorial_day].insert(0,supply)
end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  # code here
  # remember to return the updated hash
  holiday_hash[season][holiday_name] = supply_array
  holiday_hash
end

def all_winter_holiday_supplies(holiday_hash)
  # return an array of all of the supplies that are used in the winter season
  ary = []

  holiday_hash[:winter][:christmas].each do |supply|
    ary << supply
  end
  holiday_hash[:winter][:new_years].each do |supply|
    ary << supply
  end

  ary

end

def all_supplies_in_holidays(holiday_hash)
  # iterate through holiday_hash and print items such that your readout resembles:
  # Winter:
  #   Christmas: Lights, Wreath
  #   New Years: Party Hats
  # Summer:
  #   Fourth Of July: Fireworks, BBQ
  # etc.

   holiday_hash.each do |season, holidays|
      puts "#{season.to_s.capitalize!}:"
        holidays.each do |ocassion, supplies|

          if ocassion.to_s.include? "_"
            ary = ocassion.to_s.split "_"
            ary.each do |string|
              string.capitalize!
            end
            fixed_name = ary.join(" ")
            puts "  #{fixed_name}: #{supplies.join(", ")}"
          else
            puts "  #{ocassion.to_s.capitalize!}: #{supplies.join(", ")}"
        end
      end
    end
end


def all_holidays_with_bbq(holiday_hash)
  ary = []
  holiday_hash.each do |season, holidays|
    holidays.each do |ocassion, supplies|
      ary << ocassion if supplies.include?("BBQ")
    end
  end
  ary
end
