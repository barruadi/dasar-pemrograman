offsetList :: (Float -> Float) -> (Float -> Float) -> Float -> Float -> [Float]
offsetList f g a b
    | a >= b = [f a]
    | otherwise = [f a] ++ offsetList f g (g a) b

-- APLIKASI 
-- offsetList (\x -> x) (\x -> x + 2) 1.2 7.1
-- offsetList (\x -> if x >= 0 then x + 3.2 else -999) (\x -> x + 0.5) -1.0 1.0