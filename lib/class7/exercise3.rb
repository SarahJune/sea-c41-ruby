#!/usr/bin/env ruby
#
# 5 points
#
# Copy the previous OrangeTree class and extend it with the following method:
#
#   OrangeTree#pick!(amount = 1) #=> Integer or nil
#
#     Returns nil if @fruit is less than the `amount` to pick.
#     Otherwise, subtracts the `amount` from @fruit and returns it's new value.
#     The default `amount` is 1.
#

# rubocop:disable TrivialAccessors
class OrangeTree
  def initialize
    @fruit = 50
  end

  def fruit
    @fruit
  end

  def pick!(amount = 1)
    @fruit -= amount if @fruit > 0 && amount <= @fruit
  end
end
