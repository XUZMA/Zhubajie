-- runhugs echo.hs a b c
module Main where

import System.Environment

main = do
        args <- getArgs
        putStrLn (unwords args)
