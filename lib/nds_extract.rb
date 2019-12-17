require 'directors_database'
require 'pp'

# Write a method that, given an NDS creates a new Hash
# The return value should be like:
#
# { directorOne => allTheMoneyTheyMade, ... }

def directors_totals(nds)
  result = {}
  row_index = 0 
  while row_index < directors_database.length do
    column_index = 0
    total_gross = 0
    
    d_name = directors_database[row_index][:name]
    result[d_name]
    
    while column_index < directors_database[row_index][:movies].length do
      total_gross += directors_database[row_index][:movies][column_index][:worldwide_gross]
      column_index += 1
      
    end  
    result[d_name] = total_gross
    row_index += 1
    
  end
  
  return result
  
  
end

# Find a way to accumulate the :worldwide_grosses and return that Integer
# using director_data as input


def gross_for_director(director_data)
  
  t_gross = 0
  coloumn_index = 0
   
  while coloumn_index < director_data[:movies].length do
     t_gross += director_data[:movies][coloumn_index][:worldwide_gross]
     coloumn_index += 1
  end
  return t_gross
end

