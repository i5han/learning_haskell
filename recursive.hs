expx m 0 = 1
expx m n = m * m `expx` (n - 1)

{-andx [] = True
andx (b:bs) = b && andx bs-}

{-andx [] = True
andx (b:bs)
    | b = andx bs
    | otherwise = False-}

{-andx [] = True
andx (b:bs)
    | b == False = False
    | otherwise = andx bs-}

andx [] = True
andx (b:bs) = andx bs && b

concatx [] = []
concatx (xs:xss) = xs ++ concat xss

replicatex 0 _ = []
replicatex n x = x : replicatex (n-1)