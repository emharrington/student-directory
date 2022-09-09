@students = []

def new_student
  puts "Create new student? (y/n)"
  answer = gets.chomp.downcase
  if answer == "y"
    return true
  elsif answer == "n"
    return false
  else
    puts "Create new student? (y/n)"
  end
  new_student
end

def input_students
  answer = new_student
  while answer
    puts "Please enter students name:"
    name = gets.chomp
    puts "Please enter students country of birth:"
    country_of_birth = gets.chomp
    puts "Please enter students hobbies:"
    hobbies = gets.chomp
    @students << { name: name, cohort: :november, country_of_birth: country_of_birth, hobbies: hobbies }
    puts "We now have #{@students.count} students"
    answer = new_student
  end
  @students
end

def print_header
  puts "The students of Villains Academy"
  puts "-------------"
end

def print_student
  puts "NAME - COHORT - COUNTRY - HOBBIES"
  @students.each do |student|
    puts "#{@students[:name]} - #{@students[:cohort]} - #{@students[:country_of_birth]} - #{@students[:hobbies]}"
  end
end

def print_footer
  puts "Overall, we have #{@students.count} great students"
end

@students = input_students
#nothing happens until we call the methods
print_header
print_student
print_footer