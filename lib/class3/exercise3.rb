# 5 points
#
# What if Nana doesn't want you to leave? Copy your solution to exercise2 and
# paste it here. Modify the program so that you have to type 'BYE' three times
# **in a row** to stop the conversation.
#
#   $ ruby exercise3.rb
#   Nana: HI SWEETIE! GIVE NANA A KISS!
#   BYE
#   Nana: HOW'S SCHOOL GOING?
#   BYE
#   Nana: HOW'S SCHOOL GOING?
#   BYE
#   Nana: BYE SWEETIE!
#
# If you shout 'BYE' three times, but not in a row, you should still be talking
# to Nana.
#
#   $ ruby exercise3.rb
#   Nana: HI SWEETIE! GIVE NANA A KISS!
#   BYE
#   Nana: HOW'S SCHOOL GOING?
#   BYE
#   Nana: HOW'S SCHOOL GOING?
#   bye
#   Nana: HUH?! SPEAK UP, SWEETIE!
#   I HAVE TO GO NOW
#   Nana: NOT SINCE 1936!
#   BYE
#   Nana: HOW'S SCHOOL GOING?
#   BYE
#   Nana: HOW'S SCHOOL GOING?
#   BYE
#   Nana: BYE SWEETIE!

# def not_since
#   loop do
#     puts 'Nana: NOT SINCE ' + rand(1900..2000).to_s
#     response = gets.chomp
#     break while response == response.upcase && response != 'BYE'
#     response
#   end
# end

# def school
#   goodbye = 0
#   loop do
#     puts 'Nana: HOW\'S SCHOOL GOING?'
#     response = gets.chomp
#     goodbye += 1
#     break while response == 'BYE' && goodbye < 2
#     response
#   end
# end

# puts 'Nana: HI SWEETIE! GIVE NANA A KISS!'
# response = gets.chomp

# # wrong condition if upcase should not say saying_2
# while response != response.upcase || response != 'BYE'
#   puts 'Nana: HUH?! SPEAK UP, SWEETIE!'
#   response = gets.chomp
#   response = not_since
#   response = school
# end

# puts 'Nana: BYE SWEETIE!'

def school
  goodbye = 0
  while goodbye < 2
    puts 'Nana: HOW\'S SCHOOL GOING?'
    response = gets.chomp
    goodbye += 1
    response
  end
  puts 'Nana: BYE SWEETIE!'
end

puts 'Nana: HI SWEETIE! GIVE NANA A KISS!'
response = gets.chomp
while response != 'BYE'
  if response != response.upcase
    puts 'Nana: HUH?! SPEAK UP, SWEETIE!'
    response = gets.chomp
  elsif response == response.upcase && response != 'BYE'
    puts "Nana: NOT SINCE #{rand(1930..1970)}!"
    response = gets.chomp
  end
end
school if response == 'BYE'
