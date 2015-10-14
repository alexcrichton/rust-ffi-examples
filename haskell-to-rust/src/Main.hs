{-# LANGUAGE ForeignFunctionInterface #-}

import Foreign.C

foreign import ccall "double_input" doubleInput :: CInt -> CInt

main = do
    let input = 4
    let output = doubleInput input
    putStrLn $ show input ++ " * 2 = " ++ show output
