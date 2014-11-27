-- runhugs fpcomplete001.hs 

-- main = do
--    putStrLn "Hello, world!"
--    putStrLn "https://www.fpcomplete.com/school/to-infinity-and-beyond/pick-of-the-week/Simple%20examples"

import Data.Time
main = getCurrentTime >>= print

-- main = do
--    print os
--    print arch
--    print compilerName
--    print compilerVersion
