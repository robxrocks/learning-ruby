$VERBOSE = nil    # We'll explain this at the end of the lesson.
require 'prime'   # This is a module. We'll cover these soon!

def first_n_primes(n)

  # return "n must be an integer." unless n.respond_to?(:next)
  return "n must be an integer." unless n.is_a? Integer

  return "n must be greater than 0." if n <= 0

  Prime.first n
end

p first_n_primes(10)
