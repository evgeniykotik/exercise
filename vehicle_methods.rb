def accelerate
  puts "Stepping on the gas."
  puts "Speeding up."
end
def sound_horn
  puts "Pressing the horn button."
  puts "Beep beep."
end
def use_headlights (brightness="low-beem")
  puts "Turing on #{brightness} headlights."
  puts "Watch out for deer."
end
def mileage(miles_driven, gas_used)
  if gas_used==0
    return 0.0
  end
  miles_driven/gas_used
end
