qsort [] = []
qsort (x:xs) = qsort pre ++ [x] ++ qsort post
  where
    pre  = [n | n <- xs, n < x]
    post = [n | n <- xs, n >= x]
