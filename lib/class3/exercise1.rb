# 5 points

# Write a program that displays the lyrics to the beloved nursery rhyme
# "3 Bottles of Beer on the Wall".
#
# Here's how the program must work:
#
#   $ ruby exercise1.rb
#   3 bottles of beer on the wall, 3 bottles of beer!
#   Take one down, pass it around, 2 bottles of beer on the wall!
#   2 bottles of beer on the wall, 2 bottles of beer!
#   Take one down, pass it around, 1 bottle of beer on the wall!
#   1 bottle of beer on the wall, 1 bottle of beer!
#   Take one down, pass it around, no more bottles of beer on the wall!
#   No more bottles of beer on the wall, no more bottles of beer!
#   Go to the store and buy some more, 3 bottles of beer on the wall!
#
# TIP: I expect you to use a loop.

beer_bottles = 3
def check_case(beer_bottles)
  if beer_bottles == 1
    bottles_case = 'bottle'
  else
    bottles_case = 'bottles'
  end
  bottles_case
end

while beer_bottles > 0
  bottles_case = check_case(beer_bottles)
  puts "#{beer_bottles} #{bottles_case} of beer on the wall,
    #{beer_bottles} #{bottles_case} of beer!"
  beer_bottles -= 1
  bottles_case = check_case(beer_bottles)
  if beer_bottles == 0
    puts 'Take one down, pass it around,
      no more bottles of beer on the wall!'
  else
    puts "Take one down, pass it around,
      #{beer_bottles} #{bottles_case} of beer on the wall!"
  end
end

if beer_bottles == 0
  beer_bottles += 3
  puts 'No more bottles of beer on the wall,
    no more bottles of beer!'
  puts "Go to the store and buy some more,
    #{beer_bottles} #{bottles_case} of beer on the wall!"
end
