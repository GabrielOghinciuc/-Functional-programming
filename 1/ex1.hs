-- o funcție simplă
f :: Integer -> Integer
f x = x + 1

-- funcție care întoarce o funcție (adică este "curried")
suma :: Integer -> (Integer -> Integer)
suma a b = a + b

-- funcție de concatenare pentru stringuri
concatStr :: String -> (String -> String)
concatStr x y = x ++ y

-- o funcție care aplică o funcție de două ori
g1 :: (Integer -> Integer) -> Integer -> Integer
g1 f x = f (f x)

-- factorial
fact :: Integer -> Integer
fact 1 = 1
fact n = n * (fact (n - 1))

-- o altă funcție (versiunea 1 de g)
g2 :: Integer -> Integer -> Integer
g2 0 x = x + 1
g2 (n + 1) 0 = g2 n 1
g2 (n + 1) (x + 1) = g2 n (g2 (n + 1) x)

-- funcția Ackermann (versiunea finală de g)
ack :: Integer -> Integer -> Integer
ack 0 x = x + 1
ack n 0 = ack (n - 1) 1
ack n x = ack (n - 1) (ack n (x - 1))

