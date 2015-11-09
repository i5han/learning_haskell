factorial 0 = 1
factorial n = n * factorial (n - 1)

reversex [] = []
reversex [n:ns] = reverse ns ++ [n]