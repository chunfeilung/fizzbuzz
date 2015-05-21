var fizzBuzz = "";

for number in 1...100 {
    let hasFizzBuzzedThisLine = false;
    var fizzBuzzForThisLine = "";
    
    let remainderTuple = (number % 3, number % 5);
    
    switch (remainderTuple) {
        case (0, 0):
            fizzBuzzForThisLine = fizzBuzzForThisLine + "FizzBuzz";
        case (0, _):
            fizzBuzzForThisLine += "Fizz";
        case (_, 0):
            fizzBuzzForThisLine += "Buzz";
        default:
            fizzBuzzForThisLine += "\(number)";
    }
    fizzBuzz = fizzBuzz + fizzBuzzForThisLine + "\n";
}

println(fizzBuzz);
