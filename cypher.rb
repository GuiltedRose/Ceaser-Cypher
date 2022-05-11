# This is a cypher project.

# defining our method:

def ceaser_cypher(text, shift)

    # loops through the text to encrypt the message
   for i in 0...text.length do
        char_code = text[i].ord

        (a, z) = case char_code
            when 97..122 then [97, 122]   # a-z
            when 65..90  then [65, 90]    # A-Z
            else next
        end
        rotate = shift > 0 ? 26 : -26 # rotates the array we created with  char_code.
  
      char_code += shift
      char_code -= rotate unless char_code.between?(a, z) # these lines shift the code unless it falls between a & z.
  
      text[i] = char_code.chr #puts it back together; can also do text[i].join.
   end
end

message = "You cannot read ME! <3" 
ceaser_cypher(message, 37) # shows what happens when you exceed 26.

puts(message) #prints the encrypted output.
