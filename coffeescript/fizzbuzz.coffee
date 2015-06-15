fizzBuzz = (x) -> 
    return "#{x}" if (~"#{x / 3}".indexOf "." or ~"#{x / 5}".indexOf ".") and ~"#{x / 5}".indexOf "."
    return "Fizz" if ~"#{x / 5}".indexOf "."
    return "Buzz" if ~"#{x / 3}".indexOf "."
    return "FizzBuzz"


fizzBuzzOutput = (fizzBuzz number for number in [1..100])

console.log number for number in fizzBuzzOutput
