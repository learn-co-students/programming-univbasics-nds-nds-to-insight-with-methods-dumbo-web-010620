$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'


def gross_for_director(director_data)
  movie_index = 0
  movie_total = 0

  while movie_index < director_data[:movies].length do #director_data = gross_for_director(nds[start])
    movie_total += director_data[:movies][movie_index][:worldwide_gross]
    movie_index += 1
  end

  movie_total #returning movie_total to function gross_for_director
end


def directors_totals(nds)
  result = {}

  start = 0 #row_index
  while start < nds.length do
    result[nds[start][:name]] = gross_for_director(nds[start])
    start += 1
  end

  result
end
