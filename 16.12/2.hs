data Tree a = Leaf a | Branch (Tree a) (Tree a)
              deriving (Ord, Eq, Show)

a1 :: Tree Integer
a1 = Leaf 17

a2 :: Tree Integer
a2 = Branch (Leaf 19) (Leaf 17)

a3 :: Tree Integer
a3 = Branch (Branch (Leaf 19) (Leaf 17)) (Leaf 20)

a4 :: Tree String
a4 = Branch (Branch (Leaf "a") (Leaf "ba")) (Leaf "lacto")

a5 :: Tree String
a5 = Branch (Branch (Leaf "a") (Leaf "ba"))
            (Branch (Leaf "tc") (Leaf "os"))

tunde :: Tree a -> [a]
tunde (Leaf a) = [a]
tunde (Branch a1 a2) = tunde a1 ++ tunde a2
