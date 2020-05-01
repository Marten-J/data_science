m = rand(Float64, (2, 4))
display(m) # Show Matrix

print(m[argmax(m)]) # getting max value
print(findmax(m)) # getting max value and index
