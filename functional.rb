states = ["Kansas", "Nebraska", "North Dakota", "South Dakota"]

# Returns a URL-friendly version of a string.
#   Example: "North Dakota" -> "north-dakota"
def urlify(string)
  string.downcase.split.join('-')
end

# urls: Imperative version
def imperative_urls(states)
  urls = []
  states.each do |state|
    urls << urlify(state)
  end
  urls
end
puts imperative_urls(states).inspect

# urls: Functional version
def functional_urls(states)
  states.map { |state| urlify(state) }
end
puts functional_urls(states).inspect

#exercise
# Using map, write a function that takes in the states variable and returns an
# array of URLs of the form https://example.com/<urlified form>

def exercise_of_map(states)
  urls = []
  states.map { |state| urls << "https://example.com/"+urlify(state) }
  urls
end
puts exercise_of_map(states).inspect


#SELECT
#

def imperative_singles(states)
  singles = []
  states.each do |state|
    if state.split.length == 1
      singles << state
    end
  end
  singles
end
puts imperative_singles(states).inspect