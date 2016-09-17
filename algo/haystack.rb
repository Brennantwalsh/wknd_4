# Find the needle by writing one line of code. 
# As an example, if haystack = [:hay, :needle, :hay], you'd pull it out with:
# haystack[1]

haystack = {hay: [:hay, :hay, :hay, {hay: {hay: [:hay, {hay: [:hay, :hay, :needle]}, :hay, :hay, :hay]}}, :hay, :hay]}

puts haystack[:hay][3].flatten[1].flatten[1][1].flatten[1][2]

puts haystack.flatten.slice(1).slice(3).flatten.slice(1).flatten.slice(1).flatten.slice(1).flatten.slice(1)[2]