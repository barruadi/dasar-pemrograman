module UkuranBaju where
    ukuranBaju :: Int -> Int -> Int
    ukuranBaju a b =
        if a <= 150 then 1
        else if (a > 170) && ( b > 60 ) && (b <= 80) then 3
        else if ( a> 150) && ( a <= 170) && ( b <= 80) then 2
        else if ( a> 150) && ( a <= 170) && ( b > 80) then 3
        else if (a > 170) && ( b <= 60) then 2
        else 4