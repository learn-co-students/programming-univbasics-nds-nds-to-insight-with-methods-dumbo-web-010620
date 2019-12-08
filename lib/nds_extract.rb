require 'directors_database'

# Write a method that, given an NDS creates a new Hash
# The return value should be like:
#
# { directorOne => allTheMoneyTheyMade, ... }

def directors_totals(nds)
  result = {}
  nil
  nds.each do |n|
    result[n[:name]]=gross_for_director(n)
    end
    return result
end

# Find a way to accumulate the :worldwide_grosses and return that Integer
# using director_data as input

def gross_for_director(director_data)
 gross = 0
 director_data[:movies].each do |n|
   gross +=n[:worldwide_gross]
 end
 return gross
end
