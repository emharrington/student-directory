@students = []
@width = 50

def new_student
  puts "Create new student? (y/n)".center(@width)
  answer = gets.chomp.downcase
  if answer == "y"
    return true
  elsif answer == "n"
    return false
  else
    puts "Create new student? (y/n)".center(@width)
  end
  new_student
end

def input_students
  answer = new_student
  while answer
    puts "Please enter students name:".center(@width)
    name = gets.chomp
    puts "Please enter students country of birth:".center(@width)
    country = gets.chomp
    puts "Please enter students hobbies:".center(@width)
    hobbies = gets.chomp
    @students << {name: name, cohort: :november, country: country, hobbies: hobbies}
    puts "We now have #{@students.count} students".center(@width)
    answer = new_student
  end
  @students
end

def print_header
  puts "The students of Villains Academy".center(@width)
  puts "-------------".center(@width)
end

def print_student
  puts "NAME, COHORT, COUNTRY, HOBBIES".center(@width)
  @students.each do |student|
    puts "#{@students[:name]} #{@students[:cohort]} #{@students[:country]} #{@students[:hobbies]}".center(@width)
  end
end

def print_footer
  puts "Overall, we have #{@students.count} great students".center(@width)
end

@students = input_students
#nothing happens until we call the methods
print_header
print_student
print_footer