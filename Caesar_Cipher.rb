# In cryptography, a Caesar cipher, also known as Caesar’s cipher,
# the shift cipher, Caesar’s code or Caesar shift, is one of the simplest and
# most widely known encryption techniques. It is a type of substitution cipher
# in which each letter in the plaintext is replaced by a letter some fixed
# number of positions down the alphabet. For example, with a left shift of 3,
# D would be replaced by A, E would become B, and so on.
# The method is named after Julius Caesar, who used it in his private correspondence.
# 
#Example :  > caesar_cipher("What a string!", 5)
#           => "Bmfy f xywnsl!"

def caesar_cipher(input_string, input_int)
  str_length = input_string.length
  for i in 0...str_length
    val = input_string[i].ord
    new_val = val+input_int
    if val.between?(65,90)
      if new_val > 90
        extra_val = new_val- 90
        new_val = 64 + extra_val
        input_string[i] = new_val.chr
      else
        input_string[i] = new_val.chr
      end
    elsif val.between?(97,122)
      if new_val > 122
        extra_val = new_val- 122
        new_val = 96 + extra_val
        input_string[i] = new_val.chr
      else
        input_string[i] = new_val.chr
      end
    else
      input_string[i] = val.chr
    end
  end
  return input_string
end

puts caesar_cipher("We are ONE!!  Yoo..", 20)