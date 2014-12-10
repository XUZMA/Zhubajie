-- runhugs 001.hs 

import Data.Time
main = do
    putStrLn "Hello, world!"
    getCurrentTime >>= print
    putStrLn "https://www.fpcomplete.com/school/to-infinity-and-beyond/pick-of-the-week/Simple examples"
    putStrLn "ok"
