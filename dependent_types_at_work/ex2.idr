module Exercise2

natLt : (a : Nat) -> (b : Nat) -> Bool
natLt Z (S k) = True
natLt _ Z = False
natLt a b = natLt (pred a) (pred b)

natLte : (a : Nat) -> (b : Nat) -> Bool
natLte Z (S k) = True
natLte Z Z = True
natLte _ Z = False
natLte a b = natLte (pred a) (pred b)

subZero : (a: Nat) -> (b:Nat) -> Nat
subZero a Z = a
subZero a b = subZero (pred a) (pred b) 

