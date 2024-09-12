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