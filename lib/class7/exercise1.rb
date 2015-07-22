#!/usr/bin/env ruby
#
# 5 points
#
# The following five methods must be fixed:
#
#   Integer#hours_in_seconds #=> Integer
#
#     Returns the number of hours converted to seconds.
#
#     10.hours_in_seconds  #=> 36_000
#
#   String#indent(amount = 2) #=> String
#
#     Returns `amount` spaces plus the String. The default `amount` is 2.
#
#     'foo'.indent     #=> '  foo'
#     'foo'.indent(3)  #=> '   foo'
#
#   Integer#to_roman => String
#
#     Returns the roman numeral equavilent of the arabic number.
#
#     1999.to_roman  #=> 'MCMXCIX'
#
#   Array#second #=> Object
#
#     Returns the second element of the Array.
#
#     [10, 20, 30].second  #=> 20
#
#   Array#third #=> Object
#
#     Returns the third element of the Array.
#
#     [10, 20, 30].third  #=> 30
#
# HINT: Remember to use `self` to access the receiver object of the method
#
#     class Integer
#       def plus_forty_two
#         self + 42
#       end
#     end
#
#     1.plus_forty_two  #=> 43

class Integer # Returns the number of hours converted to seconds.
  def hours_in_seconds
    self * 60 * 60
  end
end

class String
  def indent(amount = 2)
    result = ' ' * amount
    result + self
  end
end

class Integer
  # rubocop:disable MethodLength
  def to_roman
    num = self
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
    romans.map! { |numeral| numeral == 'CCCC' ? 'CD' : numeral }
    romans.map! { |numeral| numeral == 'XXXX' ? 'XL' : numeral }
    romans.map! { |numeral| numeral == 'IIII' ? 'IV' : numeral }
    romans_new = romans.join('')
    romans_new.gsub!(/DCD/, 'CM')
    romans_new.gsub!(/LXL/, 'XC')
    romans_new.gsub!(/VIV/, 'IX')
    romans_new
  end
end

class Array # Returns the second element of the Array.
  def second
    array = self
    array[1]
  end

  def third
    array = self
    array[2]
  end
end
