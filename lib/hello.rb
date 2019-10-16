def hello_t (array)
  #i is the counter for this loop
  #if else statement allows code to be flexible, and not break when no block is given ./
  if block_given?
    i=0
  while i < array.length
  yield array[i]
  i=i+1
end
return array
else 
  puts "Hey! No block was given!"
end
end

hello_t(["Tim", "Tom", "Jim"]) do |name|
  if name.start_with?("T")
    puts "Hi, #{name}"
  end
end

