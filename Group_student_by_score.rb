#
#  You are tasked with writing a method called group_students_by_score that takes an array of hashes representing students and their scores. 
# Each hash contains the keys :name (the student's name) and :score (the student's score).
# Your method should return a hash where the keys are score ranges, and the values are arrays of student names who fall within those score ranges. 
# The score ranges should be defined as follows:

# "0-49": For scores from 0 to 49
# "50-69": For scores from 50 to 69
# "70-89": For scores from 70 to 89
# "90-100": For scores from 90 to 100

# Example Input:
# students = [ { name: "Alice", score: 85 }, { name: "Bob", score: 42 }, { name: "Charlie", score: 95 }, { name: "David", score: 67 },
# { name: "Eve", score: 55 },{ name: "Frank", score: 72 },{ name: "Grace", score: 30 }]

# Expected Output:
# {"0-49" => ["Bob", "Grace"],"50-69" => ["David", "Eve"],"70-89" => ["Alice", "Frank"], "90-100" => ["Charlie"]}

def group_students_by_score(students)
  keys = ["0-49", "50-69", "70-89", "90-100"]
  output_hash = {}
  keys.each { |key| output_hash[key] = [] }
  students.each do |student|
    score = student[:score]
    if score.between?(0,49)
      output_hash["0-49"] << student[:name]
    elsif score.between?(50,69)
      output_hash["50-69"] << student[:name]
    elsif score.between?(70,89)
      output_hash["70-89"] << student[:name]
    else
      output_hash["90-100"] << student[:name]
    end
  end
  return output_hash
end

#using Case the solution is here below

def group_students_by_score2(students)
  keys = ["0-49", "50-69", "70-89", "90-100"]
  output_hash = {}
  keys.each { |key| output_hash[key] = [] }
  students.each do |student|
    score = student[:score]

    case score
    when 0..49
      output_hash["0-49"] << student[:name]
    when 50..69
      output_hash["50-69"] << student[:name]
    when 70..89
      output_hash["70-89"] << student[:name]
    when 90..100
      output_hash["90-100"] << student[:name]
    end
  end
  return output_hash
end

students = [ { name: "Alice", score: 85 }, { name: "Bob", score: 42 }, { name: "Charlie", score: 95 },
                { name: "David", score: 67 },{ name: "Eve", score: 55 },{ name: "Frank", score: 72 },{ name: "Grace", score: 30 }, {name: "Avi", score: 99}]

puts group_students_by_score2(students)