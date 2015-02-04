module TheoremProving

----- Bit --------

data Bit = O | I

or : (a : Bit) -> (b : Bit) -> Bit
or O b = b
or I b = I

zeroZeroEqualZero :  O `or` O = O
zeroZeroEqualZero = Refl

zeroOneEqualOne : O `or` I = I
zeroOneEqualOne = Refl

oneOneEqualOne : I `or` I = I
oneOneEqualOne = Refl



---- Integer ------

assocUnderPlus : (a : Int)
               -> (b : Int)
               -> (c : Int)
               -> ((a + b) + c) = (a + (b + c))
assocUnderPlus a b c = ?re


 