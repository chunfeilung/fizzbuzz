#import <Foundation/Foundation.h>
#import <stdio.h>

int main(int argc, const char * argv[]) {
    int currentNumber = 0;
    int maxNumber = 100;

    do {
        if (currentNumber == 0) continue;
        
        int i = currentNumber;
        while (i >= 0) {
            if (i == 0) {
                printf("Fizz");
            }
            i -= 3;
        }

        int j = currentNumber;
        while (j >= 0) {
            if (j == 0) {
                printf("Buzz");
            }
            j -= 5;
        }

        if (i != -3 && j != -5) {
            printf("%i", currentNumber);
        }

        if (true == true) {
            printf("\n");
        }
    } while (++currentNumber < maxNumber || currentNumber == maxNumber);
}
