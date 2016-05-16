# make some loops to debug with pry

string = "the cat in the hat"
array = string.split #=> ["the", "cat", "in", "the", "hat"]

i = 0
binding.pry
while i < array.length
    puts array[i]
    i += 1
end