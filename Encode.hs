-- Bogotá Lambda
-- Francisco Cháves
-- Septiembre 28 de 2017

true  = \t f -> t
false = \t f -> f
not'  = \b -> b false true
-- and'  = ?
-- or'   = ?
-- if'   = ?

toBool b = b True False

fromBool True = true
fromBool False = false

pair = \x y z -> z x y
fst' = \p -> p true 
snd' = \p -> p false 

toPair p = p (,) 
fromPair (x,y) = \z -> z x y

zero  = \s z -> z
one   = \s z -> s z
two   = \s z -> s (s z)
three = \s z -> s (s (s z))

succ' = \n s z -> s (n s z)
-- pred' = ?
sum'  = \n m -> \s z -> n s (m s z)
-- prod   = ?
-- pow    = ?
-- minus  = ?

isZero = \n -> n (\x -> false) true
-- equal  = ?
-- odd    = ?
-- even   = ?

toNat n = n (+1) 0

fromNat 0 = zero
fromNat n = succ' (fromNat (n - 1))

fix f = f (fix f)

fact = fix (\f n -> if n == 0 then 1 else n * f (n - 1))

fib = fix (\f n -> if n <= 1 then 1 else f (n - 1) + f (n - 2))
 
