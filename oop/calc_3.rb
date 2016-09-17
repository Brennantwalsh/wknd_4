# In this example, we have THREE calculators, the two included in the previous
# exercises as well as Whiz Bang Calculator that can even calculate the hypotenuse
# of a triangle if given the length of the other two sides. Figure out how to 
# DRY up all the code below - there shouldn't be a single method duplicated between
# any two classes.

class SimpleCalculator

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

class FancyCalculator < SimpleCalculator
  def square_root(number)
    Math.sqrt(number)
  end
end

class WhizBangCalculator < FancyCalculator
  def hypotenuse(first_number, second_number)
    Math.hypot(first_number, second_number)
  end
  
  def exponent(first_number, exponent_number)
    total = 1
    exponent_number.times { total = multiply(total,first_number) }
    total
  end
end

# Copy your driver code from the previous exercise and more below:
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


whiz = WhizBangCalculator.new
if whiz.square_root(12) == 3.4641016151377544
  puts "Success"
else
  puts "F"
end
puts whiz.subtract(1, 2)
if whiz.subtract(1, 2) == -1
  puts "Success"
else
  puts "F"
end
if whiz.divide(3, 1) == 3
  puts "Success"
else
  puts "f"
end
puts whiz.exponent(2, 2)
if whiz.exponent(2, 2) == 4
  puts "Success"
else puts "F"
end
puts whiz.hypotenuse(3, 4)
if whiz.hypotenuse(3, 4) == 5
  puts "Success"
else
  puts "F"
end
