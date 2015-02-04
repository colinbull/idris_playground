module DependentRecords

import Vector

record Person : Type where
    newPerson : (name : String) -> 
                (age : Int) -> Person
                
record Class : Type where
    ClassInfo : (students : Vect n Person) -> 
                (className : String) ->
                Class 
    
enrollStudent : Person -> Class -> Class
enrollStudent p c = record { students = p :: students c } c
               
colin : Person
colin = newPerson "Colin Bull" 31

withName : String -> Person -> Person
withName name p = record { name = name } p 
