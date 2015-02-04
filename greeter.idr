module Main

main : IO ()
main = do putStr "Given me your name? "
          name <- getLine
          putStrLn ("Hello " ++ name)
