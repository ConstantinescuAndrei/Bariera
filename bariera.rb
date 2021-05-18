ok_list = [12, 13, 14, 15]
not_ok_list = [16, 17, 18, 19]

print "Barrier is down, please tell us your id: "
input = gets.chomp

begin
    input = Integer(input)
rescue ArgumentError, TypeError
    puts "Invalid input!!! (please write a valid number!)"
    exit    
end

ok_list.each do |nr|
    if nr == input
        puts "Passed"
        exit
    end
end

not_ok_list.each do |nr|
    if nr == input
        puts "Wrong id -> call police"
        exit
    end
end

puts "You have a wrong id"