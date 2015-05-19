SELECT
    CASE
        WHEN (number MOD 15 = 0) THEN "FizzBuzz"
        WHEN (number MOD  3 = 0) THEN "Fizz"
        WHEN (number MOD  5 = 0) THEN "Buzz"
        ELSE number
    END
FROM
(
    SELECT
        CAST(
            CONCAT(
                first_digit.digit,
                second_digit.digit
            ) AS UNSIGNED INTEGER
        ) AS number
        FROM
        (
            SELECT 0 AS digit UNION ALL
            SELECT 1 UNION ALL
            SELECT 2 UNION ALL
            SELECT 3 UNION ALL
            SELECT 4 UNION ALL
            SELECT 5 UNION ALL
            SELECT 6 UNION ALL
            SELECT 7 UNION ALL
            SELECT 8 UNION ALL
            SELECT 9 UNION ALL
            SELECT 10
        ) first_digit
        INNER JOIN
        (
            SELECT 0 AS digit UNION ALL
            SELECT 1 UNION ALL
            SELECT 2 UNION ALL
            SELECT 3 UNION ALL
            SELECT 4 UNION ALL
            SELECT 5 UNION ALL
            SELECT 6 UNION ALL
            SELECT 7 UNION ALL
            SELECT 8 UNION ALL
            SELECT 9
        ) second_digit
        WHERE
            NOT (first_digit.digit = 0 AND second_digit.digit = 0) AND
            NOT (first_digit.digit = 10 AND second_digit.digit > 0)
        ORDER BY
            first_digit.digit, second_digit.digit
) numbers
