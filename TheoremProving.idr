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

orAssoc : (a : Bit) 
        -> (b : Bit)
        -> (c : Bit)
        -> (a `or` b) `or` c = a `or` (b `or` c)
orAssoc O b c = Refl
orAssoc I _ _ = Refl

------ Interval --------

data Interval : Nat -> Nat -> Type where
     mkInterval : (start : Nat) -> (end : Nat) -> Interval start end

int : Interval 1 3
int = mkInterval 1 3






 
