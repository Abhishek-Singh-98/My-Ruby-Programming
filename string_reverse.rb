def string_reverse(s)
  i = -1
  j = 0
  len = s.size
  while j < len/2
    s[i],s[j] = s[j],s[i]
    i -= 1
    j +=1
  end
  return s
end

s = 'abcdaqwq'
p string_reverse(s)