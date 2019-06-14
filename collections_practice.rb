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
    if words.start_with?("wa")
    new_array << words
    end
  end
  new_array.shift
end

def remove_non_strings(array)
  array.each do |elements|
    array.delete if elements.is_a?(:Symbol)
    end
  end
end