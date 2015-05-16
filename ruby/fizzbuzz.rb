#!/usr/bin/ruby

tens = [
    "0",
    "1",
    "2",
    "3",
    "4",
    "5",
    "6",
    "7",
    "8",
    "9",
   "10"
]

ones = [
    "0",
    "1",
    "2",
    "3",
    "4",
    "5",
    "6",
    "7",
    "8",
    "9"  
]

numbers = []

tens.each do |ten|
    ones.each do |one|
        numbers << ten + one
    end
end

numbers_as_numbers = []

numbers[1..100].each do |number|
    numbers_as_numbers << number.to_i
end

fizzbuzzes = ""

numbers_as_numbers.each do |number|
    if (number % 15 == 0)
        fizzbuzzes << "FizzBuzz"
    elsif (number % 5 == 0)
        fizzbuzzes << "Buzz"
    elsif (number % 3 == 0)
        fizzbuzzes << "Fizz"
    else
        fizzbuzzes << "#{number}"
    end
    fizzbuzzes << "
"
end

print fizzbuzzes
