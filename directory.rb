def input_students
  puts "Please enter the names of the students"
  puts "To finish, just hit return twice"
  # create an empty array
  students = []
  # get the fist name
  name = gets.chomp
  # when name isnt empty, repeat this code:
  while !name.empty? do
    # add the student hash to array
    students << {name: name, cohort: :november}
    puts "Now we have #{students.count} students"
    # get another name from user:
    name = gets.chomp
  end
  #return the array of students:
  students
end

# then, we call our methods:
students = input_students
print_header
print(students)
print_footer(students)
