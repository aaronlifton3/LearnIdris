module Elem

import Decidable.Equality

using (xs : List a)
 data Elem  : a -> List a -> Type where
      Here  : Elem x (x :: xs)
      There : Elem x xs -> Elem x (y :: xs)
      
isElem : (x : Nat) -> (xs : List Nat) -> Maybe (Elem x xs)
isElem x [] = Nothing
isElem x (y :: xs) with (decEq x y)
  isElem x (x :: xs) | (Yes refl) = Just Here
  isElem x (y :: xs) | (No contra) = Just (There !(isElem x xs))
