module LamaTidur where

-- DEFINISI DAN SPESIFIKASI
lamaTidur :: Int -> Int -> Int -> (Bool, Int, Int, Int)
{- Menerima 3 input dan mengeluarkan apakah jam tidur cukup atau tidak dan lama tidurnya -}

-- REALISASI
lamaTidur j m d =
    let 
        waktu_a = j * 3600 + m * 60 + d
        waktu_b = 5 * 3600 

        waktu_tidur
            | j < 5 = waktu_b - waktu_a
            | otherwise = waktu_b - waktu_a + 24 * 3600
        
        jam = div waktu_tidur 3600
        menit = div (mod waktu_tidur 3600) 60
        detik = mod waktu_tidur 60

        tidur_cukup = jam >= 6
    in
        (tidur_cukup, jam, menit, detik)

-- APLIKASI
-- lamaTidur 23 40 20