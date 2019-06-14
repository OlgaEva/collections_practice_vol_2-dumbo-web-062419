# your code goes here
require 'pry'

def begins_with_r(array)
  array.each do |words|
    if words.start_with?("r")

    else
      return false
    end
  end
  true
end

def contain_a(array)
with_a_array = []
  array.each do |words|
    if words.include?("a")
      with_a_array << words
    end
  end
  return with_a_array
end

def first_wa(array)
new_array = []
  array.each do |words|
    if words.is_a?(String) && words.start_with?("wa")
    new_array << words
    end
  end
  new_array.shift
end


def remove_non_strings(array)
  another_array = []
  array.each do |elements|
    if elements.is_a?(String)
      another_array << elements
    end
  end
  another_array
end

def count_elements(array)
  counts = {}
  array.each do |elements|
    if counts.has_key?(elements)
      counts[elements] += 1
    else
      counts[elements] = 0
      counts[elements] += 1
    end
  end
    array3 = []
    counts.each do |element, num|
      element.each { |key, value| array3 << {key => value, :count => num} }
  end
  array3
end

def merge_data(keys, data)
  #binding.pry
  merged_array = []
  data[0].each do |person, infohash|
  new_hash = {}
    keys.each do |personhash|
      #binding.pry
      if person == personhash[:first_name]
      new_hash = infohash.merge(personhash)
      merged_array << new_hash
      end
    end
  end
  merged_array
end

def find_cool(array)
  cool_hash = []
  array.each do |hash|
    hash.each do |key, value|
      cool_hash << hash if key == :temperature && value == "cool"
    end
    end
  cool_hash
end

def organize_schools

end
