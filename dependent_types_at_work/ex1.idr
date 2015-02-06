module Exercise1

data Bit : Type where 
  I : Bit 
  O : Bit 
  
not : Bit -> Bit 
not I = O 
not O = O

-- XNOR - equal
equiv : Bit -> Bit -> Bit 
equiv I I = I
equiv I O = O
equiv O I = O
equiv O O = I

-- OR 
disjunc : Bit -> Bit -> Bit
disjunc I a = I 
disjunc a I = I
disjunc _ _ = O

-- AND
conjunc : Bit -> Bit -> Bit
conjunc I I = I
conjunc I O = O
conjunc O I = O
conjunc O O = O
O = ?O_rhs

-- Implication  ->
impl : Bit -> Bit -> Bit
impl I I = I
impl I O = O
impl O I = I
impl O O = O



