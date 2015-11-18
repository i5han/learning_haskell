--allx p = and . map p
--allx p = not . any (not . p)

--anyx p = map p . or doesnt work
--anyx p = or . map p
--anyx p = null . filter p
--anyx p = not . null . dropWhile (not . p)

composex :: [a -> a] -> (a -> a)
composex = foldr (.) id