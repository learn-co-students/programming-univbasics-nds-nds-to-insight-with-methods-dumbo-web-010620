require 'directors_database'
require 'pp'
require 'pry'

# Write a method that, given an NDS creates a new Hash
# The return value should be like:
#
# { directorOne => allTheMoneyTheyMade, ... }
#In the lab you're going to work with the directors NDS again and clean up your implementation from the previous
#lesson. You're going to be prompted to create a "First-order method" that will make your code cleaner (gross_for_director).
#This method will be used by another method that contains it called directors_totals. It returns a Hash of directors names to their total gross, like we've seen before, but it's much neater code.

def gross_for_director(director_data)
  gross_total = 0
  index = 0
  while index < director_data[:movies].length do
    gross_total += director_data[:movies][index][:worldwide_gross]
    index += 1
    # binding.pry
  end
    gross_total
end
  

def directors_totals(nds)
  index = 0
  dir_hash = {}
  while index < directors_database.length do
    gross_total = 0
    dir_name = directors_database[index][:name]
    gross_total += gross_for_director(directors_database[index])
    dir_hash[dir_name] = gross_total
    #binding.pry
    index += 1
  end
  dir_hash
end

# need help calling my first-order method

# Find a way to accumulate the :worldwide_grosses and return that Integer
# using director_data as input

# out_index = 0
#   gross_total = 0
#   while out_index < director_data.length do
#     next_index = 0
#     while next_index < director_data[:movies].length do
#       #binding.pry
#       gross_total += directors_totals(director_data)
#       next_index += 1
#     end
#     out_index += 1
#   end
#   gross_total
#   #binding.pry
# end


