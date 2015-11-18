type Parser a = String -> [(a, String)]

returnx :: a -> Parser a
returnx v = \inp -> [(v, inp)]

failure :: Parser a
failure = \inp -> []

item :: Parser Char
item = \inp -> case inp of
                [] -> []
                (x:xs) -> [(x, xs)]

parse :: Parser a -> String -> [(a, String)]
parse p str = p str

--OR ELSE operator p +++ q is read as apply p or else apply q
(+++) :: Parser a -> Parser a -> Parser a
p +++ q = \inp -> case p inp of
                    [] -> q inp
                    [(v, out)] -> [(v, out)]
