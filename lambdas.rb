# Lambdas vs. Procs
# If you're thinking that procs and lambdas look super similar,
# that's because they are! There are only two main differences.
#
# First, a lambda checks the number of arguments passed to it,
# while a proc does not. This means that a lambda will throw an error
# if you pass it the wrong number of arguments,
# whereas a proc will ignore unexpected arguments and assign nil
# to any that are missing.
#
# Second, when a lambda returns, it passes control back
# to the calling method; when a proc returns, it does so immediately,
# without going back to the calling method.

def lambda_demo(a_lambda)
  puts "I'm the method!"
  a_lambda.call
end

lambda_demo(lambda { puts "I'm the lambda!" })


# Lambda Syntax
strings = ["leonardo", "donatello", "raphael", "michaelangelo"]

symbolize = lambda { |x| x.to_sym}
symbols = strings.collect(&symbolize)
p symbols


###
my_array = ["raindrops", :kettles, "whiskers", :mittens, :packages]

symbol_filter = lambda { |param| param.is_a? Symbol}
symbols = my_array.select(&symbol_filter)
p symbols


# practice
crew = {
  captain: "Picard",
  first_officer: "Riker",
  lt_cdr: "Data",
  lt: "Worf",
  ensign: "Ro",
  counselor: "Troi",
  chief_engineer: "LaForge",
  doctor: "Crusher"
}

first_half = lambda { |key, value| value < "M"}
a_to_m = crew.select(&first_half)
p a_to_m
