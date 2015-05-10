def fizzbuzz(number=100):
    fizzbuzz = '';
    for i in range(1, number + 1):
        if i % 3 == 0:
            fizzbuzz += 'Fizz'
        if i % 5 == 0:
            fizzbuzz += 'Buzz'
        if i % 3 !=0 and i % 5 != 0:
            fizzbuzz += str(i)

        fizzbuzz += '\n'

    return fizzbuzz
