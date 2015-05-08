#include <iostream>
#include <string>
#include <math.h>

using namespace std;

const char* fizz_string() {
    return "Fizz";
}

int length_of_fizz_string() {
    const char* fizzString = fizz_string();
    return (unsigned) strlen(fizzString);
}

const char* buzz_string() {
    return "Buzz";
}

int length_of_buzz_string() {
    const char* buzzString = buzz_string();
    return (unsigned) strlen(buzzString);
}

int length_of_newline_character() {
    return '\\' + 'n' - 201;
}

int length_of_number(int number) {
    if (number < 10) {
        return 1;
    } else {
        return length_of_number(number / 10) + 1;
    }
    
    return 0;
}

int calculate_required_length_of_c_string_for_fizz_buzz() {
    int numberOfCharactersNeeded = 0;
    for (int i = 1; i < 100; i++) {
        if (i % 3 == 0) {
            numberOfCharactersNeeded += length_of_fizz_string();
        }
        
        if (i % 5 == 0) {
            numberOfCharactersNeeded += length_of_buzz_string();
        }
        
        if (!(i % 3 == 0 || i % 5 == 0)) {
            numberOfCharactersNeeded += 3;
        }
        numberOfCharactersNeeded += length_of_number(i);
    }
    
    return numberOfCharactersNeeded;
}

char* integer_to_char_array(int theInteger) {
    char* integerAsCharArray = new char[length_of_number(theInteger) + 1];

    for (int i = 0; i < length_of_number(theInteger); i++) {
        int theSingleDigitInteger = theInteger / (int) pow(10, length_of_number(theInteger) - i - 1) % 10;
        char digit = '0';
        for (int j = 0; j < 10; j++) {
            if (j == theSingleDigitInteger) {
                integerAsCharArray[i] = digit;
            }
            digit += 1;
        }
    }

    return integerAsCharArray;
}

int main(int argc, const char * argv[]) {
    int lengthOfFizzBuzzString = calculate_required_length_of_c_string_for_fizz_buzz();

    char* fizzBuzzString = new char[lengthOfFizzBuzzString + 1];
    
    int c;

    for (int i = 1; i < 100; i++) {
        if (i % 3 == 0) {
            for (int j = 0; j < (unsigned) length_of_fizz_string(); j++) {
                fizzBuzzString[c++] = fizz_string()[j];
            }
        }
        
        if (i % 5 == 0) {
            int buzzCounter;
            buzzCounter = 0;
            while (buzzCounter < length_of_buzz_string()) {
                fizzBuzzString[c++] = buzz_string()[buzzCounter++];
            }
        }
        
        if (i % 3 != 0 && i % 5 != 0) {
            char* number = integer_to_char_array(i);
            int lengthOfNumber = length_of_number(i);
            for (int j = 0; j < length_of_number(i); j++) {
                fizzBuzzString[c++] = number[j];
            }
        }
        
        fizzBuzzString[c++] = '\n';
    }

    int i = 100;

    if (i % 3 == 0) {
        for (int j = 0; j < (unsigned) length_of_fizz_string(); j++) {
            fizzBuzzString[c++] = fizz_string()[j];
        }
    }
    
    if (i % 5 == 0) {
        int buzzCounter;
        buzzCounter = 0;
        while (buzzCounter < length_of_buzz_string()) {
            fizzBuzzString[c++] = buzz_string()[buzzCounter++];
        }
    }
    
    if (i % 3 != 0 && i % 5 != 0) {
        char* number = integer_to_char_array(i);
        int lengthOfNumber = length_of_number(i);
        for (int j = 0; j < length_of_number(i); j++) {
            fizzBuzzString[c++] = number[j];
        }
    }
    
    fizzBuzzString += '\0';
    
    cout << fizzBuzzString;
    
    return 0;
}
