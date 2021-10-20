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

# singles: Functional version
def functional_singles(states)
  states.select { |state| state.split.length == 1 }
end
puts functional_singles(states).inspect

#
# Exercise
# Write two select functions that return the Dakotas: one using String#include?
# (Section 2.5) to test for the presence of the string “Dakota” and one that tests
# for the length of the split array being 2.
#

def exercise_select_one(states)
  states.select { |state| state.include?('Dakota') }
end
puts exercise_select_one(states).inspect

def exercise_select_two(states)
  states.select { |state| state.split.length == 2 }
end
puts exercise_select_two(states).inspect

# SELECT
# Imperative solution

numbers = 1..10

# sum: Imperative solution
def imperative_sum(numbers)
  total = 0
  numbers.each do |n|
    total += n
  end
  total
end
puts imperative_sum(numbers)

#sum: functional version
def functional_sum(numbers)
  numbers.reduce { |total, n| total + n }
end
puts functional_sum(numbers)

#Reduce, second example:

# lengths: Imperative version
def imperative_lengths(states)
  lengths = {}
  states.each do |state|
    lengths[state] = state.length
  end
  lengths
end
puts imperative_lengths(states)

def functional_lengths(states)
  states.reduce({}) do |lengths, state|
    lengths[state] = state.length
    lengths
  end
end
puts functional_lengths(states)

