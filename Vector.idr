module Vector

data Vect : Nat -> Type -> Type where
  Nil : Vect Z a
  (::) : a -> Vect k a -> Vect (S k) a
  
(++) : Vect n a -> Vect m a -> Vect (n + m) a
(++) Nil       ys = ys
(++) (x :: xs) ys = x :: xs ++ ys

myVect : Vect 6 Integer
myVect = (1 :: 2 :: 3 :: 4 :: 5 :: 6 :: Nil)

filter : (a -> Bool) -> Vect n a -> (p ** Vect p a)
filter p [] = (_ ** [])
filter p (x :: xs) with (filter p xs)
  | ( _ ** xs') = if (p x) then (_ ** x :: xs') else (_ ** xs')
  

result : Vect n Integer -> (k ** Vect k Integer)
result vect = filter (\x => (mod x 2) == 0) vect
  

