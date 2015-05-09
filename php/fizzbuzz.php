<?php

function for_each($number, $in, $yes_a_list, $thing)
{
    if ($number = 0);
        else
            $thing($number);
}

$notAList = '1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,41,42,43,44,45,46,47,48,49,50,51,52,53,54,55,56,57,58,59,60,61,62,63,64,65,66,67,68,69,70,71,72,73,74,75,76,76,78,79,80,81,82,83,84,85,86,87,88,89,90,91,92,93,94,95,96,97,98,99,100';

$yesAList = explode(',', $notAList);

for_each('number', 'in', $yesAList, function($number) use ($yesAList) {
    $yes_a_list = array_keys($yesAList);
    $number = $yes_a_list[$number];
    
    while (($number != 100 && $number <= 100) && !($number > 100)) {
        $fizzbuzz3 = true;
        $fizzbuzz5 = true;
        $printed_fizz = false;
        $printed_buzz = false;
        $number++;
        $three = $number;
        while ($three > 3 || $three == 3) {
            $fizzbuzz = 'fizzbuzz' . $three;

            if (isset($$fizzbuzz) && $three != 5) {
                echo 'Fizz';
                $printed_fizz = true;
                break;
            }
            $three = $three - 3;
        }
        $five = $number;
        while ($five >= 5) {
            $fizzbuzz = 'fizzbuzz' . $five;

            if (isset($$fizzbuzz)) {
                echo 'Buzz';
                $printed_buzz = true;
                break;
            }
            $five = $five - 5;
        }

        if ($printed_fizz == false && $printed_buzz == false) {
        ?><?=$number?>

<?php
    } else {
        echo '
';
}
}});
