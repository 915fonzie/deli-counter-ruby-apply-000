# Write your code here.
$customer_count = 0
def line(katz_deli)
  temp = ""
  if katz_deli.empty?
    puts "The line is currently empty."
  else
    katz_deli.each_with_index do |person, idx|
      temp += " #{idx + 1}. #{person}"
    end
    puts "The line is currently:#{temp}"
  end
end

def take_a_number(katz_deli,last_person)
  katz_deli.push(last_person)
  puts "Welcome, #{katz_deli.last}. You are number #{katz_deli.index(last_person) + 1} in line."
end

def take_a_number_2()
  $customer_count+= 1
  puts "You are currently #{$customer_count} in line."
end
take_a_number_2
take_a_number_2

def now_serving(katz_deli)
  if katz_deli.empty?
    puts "There is nobody waiting to be served!"
  else
    puts "Currently serving #{katz_deli.shift}."
  end
end
