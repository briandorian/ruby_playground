require 'date'

#Returns the day of the week given a Time object
def day_of_the_week(time)
  Date::DAYNAMES[time.wday]
end

def greeting(time)
  "Good morning! today is #{day_of_the_week(time)} -- I hope you enjoy the day! "
end