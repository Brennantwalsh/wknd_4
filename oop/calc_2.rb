# In the previous exercise, you were asked to DRY up your code (remove duplicated code)
# by using Inheritance. In this exercise, you must DRY up your code 
# a different technique using Composition. Hint: Google 'Ruby Mixin Module'. (Using
# mixin modules is how you achieve Composition with Ruby.)

module SimpleCalculator

  def add(first_number, second_number)
    first_number + second_number
  end

  def subtract(first_number, second_number)
    first_number - second_number
  end

  def multiply(first_number, second_number)
    first_number * second_number
  end

  def divide(first_number, second_number)
    first_number / second_number
  end

end

class FancyCalculator
  include SimpleCalculator

  def square_root(number)
    Math.sqrt(number)
  end
end

# Copy your driver code from the previous exercise below:
fcalc = FancyCalculator.new
if fcalc.square_root(12) == 3.4641016151377544
  puts "Success"
else
  puts "F"
end
puts fcalc.subtract(1, 2)
if fcalc.subtract(1, 2) == -1
  puts "Success"
else
  puts "F"
end
if fcalc.divide(3, 1) == 3
  puts "Success"
else
  puts "f"
end