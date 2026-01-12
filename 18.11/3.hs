fact2 :: Integer -> Integer
fact2 n | n < 0 = 0
        | n == 0 = 1
        | n > 0 = n * (fact2 (n-1))
