ubahArah :: Int -> Int -> Int
ubahArah s r
    | s + r >= 0 = mod (s + r) 360
    | otherwise = 360 + (s + r)

-- APLIKASI 
-- ubahArah 150 180 -> 330
-- ubahArah 90 -180 -> 270