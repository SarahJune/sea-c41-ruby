#!/usr/bin/env ruby
#
# 5 points
#
# Eventually, someone thought it would be terribly clever if putting a smaller
# number before a larger one meant you had to subtract the smaller one. As a
# result of this development, you must now suffer.
#
# Rewrite your previous program so that, when passed any integer between 1 and
# 1000, it returns a string containing the proper modern Roman numeral. In other
# words:
#
#   $ ruby exercise5.rb 9
#   IX
#
# TIP #1: Here's a mapping of Roman to Arabic numerals:
#
#   1000 = M
#    900 = CM
#    500 = D
#    400 = CD
#    100 = C
#     90 = XC
#     50 = L
#     40 = XL
#     10 = X
#      9 = IX
#      5 = V
#      4 = IV
#      1 = I
#
# TIP #3: You only need to change the `modern_roman_numeral` method.

# rubocop:disable MethodLength
def modern_roman_numeral(num)
  romans = []
  m = num / 1000
  romans.push('M' * m)
  num -= m * 1000
  d = num / 500
  romans.push('D' * d)
  num -= d * 500
  c = num / 100
  romans.push('C' * c)
  num -= c * 100
  l = num / 50
  romans.push('L' * l)
  num -= l * 50
  x = num / 10
  romans.push('X' * x)
  num -= x * 10
  v = num / 5
  romans.push('V' * v)
  num -= v * 5
  i = num / 1
  romans.push('I' * i)
  num -= i * 1
  romans.map! { |x| x == 'DDDD' ? 'DM' : x }.flatten!
  romans.map! { |x| x == 'CCCC' ? 'CD' : x }.flatten!
  romans.map! { |x| x == 'LLLL' ? 'LC' : x }.flatten!
  romans.map! { |x| x == 'XXXX' ? 'XL' : x }.flatten!
  romans.map! { |x| x == 'VVVV' ? 'VX' : x }.flatten!
  romans.map! { |x| x == 'IIII' ? 'IV' : x }.flatten!
  romans.join('')
end

input = ARGV[0].to_i

abort 'Usage: exercise5.rb [1-1000]' unless input.between?(1, 1000)

puts modern_roman_numeral(input)
