#list of students in an array:
students = [
  "Dr. Hannibal Lecter", 
  "Darth Vader", 
  "Nurse Ratched", 
  "Michael Corleone", 
  "Alex DeLarge", 
  "The Wicked Witch of the West", 
  "Terminator", 
  "Freddy Krueger", 
  "The Joker", 
  "Joffrey Baratheon", 
  "Norman Bates"
]
#print them:
puts "The students of Villains Academy"
puts "---------------"
students.each do |student|
  puts students
end
#print the total:
puts "Overall, we have #{students.count} great students"