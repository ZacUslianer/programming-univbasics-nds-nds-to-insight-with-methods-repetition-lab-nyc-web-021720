$LOAD_PATH.unshift(File.dirname(__FILE__))
require_relative './directors_database'
require 'pry'

def directors_totals(source)
  result = {}
  director_index = 0
  while director_index < source.size do
    director = source[director_index]
    result[director[:name]] = gross_for_director(director)
    director_index += 1
  end
  result
end

def gross_for_director(d)
  total = 0
  index = 0

  while index < d[:movies].length do
    total += d[:movies][index][:worldwide_gross]
    index += 1
  end

  total
end

def list_of_directors(source)
  index = 0
  name_array = []
  while index < source.count do 
   name_array << source[index][:name]
    index += 1 
    end
    name_array
  end

def total_gross(source)

  directors_names = list_of_directors(source)
  movie_totals = directors_totals(source)
  grand_total = 0 
  row_index = 0 
 
  while row_index < directors_names.length do   
    director_name = directors_names[row_index]
    grand_total += movie_totals[director_name]
  
    row_index += 1
  end
  # Write this implementation
  #
  # Should use methods:
  # 1. directors_totals: returns a Hash of { dir_name => gross }
  # 2. list_of_directors: names provides an Array of directors names (use
  #
  # Visit each key (i.e. director name), look up the value in the hash
  # returned by directors_totals, and add it to a running total. When done,
  # return the total
end


