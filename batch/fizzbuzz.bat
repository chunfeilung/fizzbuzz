@echo off
SETLOCAL EnableDelayedExpansion
SET fizzbuzz_counter=1

for /l %%i in (1, 1, 100) do (
    SET /A FIZZ_NUMBER=%%i %% 3 
    SET /A BUZZ_NUMBER=%%i %% 5 
    SET /A FIZZBUZZ_AND_OR_NUMBER= 
    if 0 == !FIZZ_NUMBER! (SET FIZZBUZZ_AND_OR_NUMBER=!FIZZBUZZ_AND_OR_NUMBER!Fizz)
    if 0 == !BUZZ_NUMBER! (SET FIZZBUZZ_AND_OR_NUMBER=!FIZZBUZZ_AND_OR_NUMBER!Buzz)
    
    if 0 == !FIZZBUZZ_AND_OR_NUMBER! (
        echo %%i
    ) else (
        echo !FIZZBUZZ_AND_OR_NUMBER:~1!
    )
)