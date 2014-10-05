module Plus

main : IO ()
main = putStrLn "Hello, World"

plus2 : Nat -> Nat -> Nat
plus2 Z y = y
plus2 (S k) y = S (plus2 k y)
