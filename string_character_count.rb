def calculate_count(s)
  hash = Hash.new(0)
  s.split('').each{|char| hash[char] += 1}
  return hash
end

s = 'abhishek neha married together'
p calculate_count(s)