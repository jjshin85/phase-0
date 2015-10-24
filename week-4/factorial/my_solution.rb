# Factorial

# I worked on this challenge [with: Alan Alcesto].


# Your Solution Below

def factorial(number)
  if number == 0
   return 1
  else
    n = number - 1
    while n >= 1
      number *= n
      n -= 1
    end
    return number
  end
end
