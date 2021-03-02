class String
    def is_number?
        true if Float(self) rescue false
    end
end

def get_input(request)
    if request == "operator"
        input = gets
        input = input.chomp
        return input
    elsif request == "number"
        input = gets
        if input.is_number?
            number = input.to_f
            return number
        else
            abort("not a number")
        end
    end
end

puts "enter a number: "
num1 = get_input("number")
puts "\nenter a operator: "
op = get_input("operator")
puts "\nenter a number: "
num2 = get_input("number")

if op == "+"
    puts "\nresult: #{num1 + num2}"
elsif op == "-"
    puts "\nresult: #{num1 - num2}"
elsif op == "*"
    puts "\nresult: #{num1 * num2}"
elsif op == "/"
    puts "\nresult: #{num1 / num2}"
else
    abort("invalid operator")
end