holiday_hash = {
  :winter => {
    :christmas => ["Lights", "Wreath"],
    :new_years => ["Party Hats"]
  },
  :summer => {
    :fourth_of_july => ["Fireworks", "BBQ"]
  },
  :fall => {
    :thanksgiving => ["Turkey"]
  },
  :spring => {
    :memorial_day => ["BBQ"]
  }
}

def all_holidays_with_bbq(holiday_hash)
  # return an array of holiday names (as symbols) where supply lists
  # include the string "BBQ"
#   array = [ ]
#     if holiday_hash.value?("BBQ")
#       array << key
#     end
#     array
# end

array = [ ]
holiday_hash.each do |season, holiday|
  if holiday_hash.value == "BBQ"
    array << holiday_hash.key
  end
end
array

end


print all_holidays_with_bbq(holiday_hash)
