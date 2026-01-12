sigma :: Integer -> Integer -> (Integer -> Integer) -> Integer
sigma min max f | min == max = f min
                | min < max = (f min) + (sigma (min+1) max f)
                | min > max = 0 

f :: Integer -> Integer
f x = x + 1


