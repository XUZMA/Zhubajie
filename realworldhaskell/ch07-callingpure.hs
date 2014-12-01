-- main itself is an I/O action with type IO (). You can only perform I/O actions from within other I/O actions. All I/O in Haskell programs is driven from the top at main, which is where execution of every Haskell program begins. This, then, is the mechanism that provides isolation from side effects in Haskell: you perform I/O in your IO actions, and call pure (non-I/O) functions from there. Most Haskell code is pure; the I/O actions perform I/O and call that pure code.
-- do is a convenient way to define a sequence of actions. As you'll see later, there are other ways. When you use do in this way, indentation is significant; make sure you line up your actions properly. 
-- You only need to use do if you have more than one action that you need to perform. The value of a do block is the value of the last action executed. 

name2reply :: String -> String
name2reply name =
    "Pleased to meet you, " ++ name ++ ".\n" ++
    "Your name contains " ++ charcount ++ " characters."
    where charcount = show (length name)

main :: IO ()
main = do
       putStrLn "Greetings once again.  What is your name?"
       inpStr <- getLine
       let outStr = name2reply inpStr
       putStrLn outStr
