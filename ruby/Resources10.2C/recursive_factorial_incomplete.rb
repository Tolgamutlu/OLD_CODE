# Recursive Factorial

# Complete the following
def factorial(n)
  if n <= 0
    return 1
  else
    n * factorial(n-1)
  end
end

# Add to the following code to prevent errors for ARGV[0] < 1 and ARGV.length < 1
def main
  puts factorial(ARGV[0].to_i)
end

main()
