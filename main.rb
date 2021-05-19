# require_relative "barrier"
require_relative "barrier.rb"
include Barrier

print "Please tell us your id: "
user_id = gets.chomp

print Barrier.check_id(user_id)
