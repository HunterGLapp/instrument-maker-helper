module Freqs where

type Freq  = Double

twelveTETfreq :: Int -> Freq -> Freq
twelveTETfreq n a_freq = (2.0 ** exp) * a_freq where
  exp = fromIntegral (n - 49) / 12.0

twelveTETn :: Freq -> Freq -> Int
twelveTETn freq a_freq = round (12 * (logBase 2 (freq / 440)) + 49) 

pianoFreq n = twelveTETfreq n 440
pianoN freq = twelveTETn freq 440

--getFreq :: Tuning -> Scale -> Double -> Double
--getFreq tuning scale a_freq = tuning 

tubeLengthInches dia freq = (speedOfSound / (2.0 * freq))
                   + (dia / 2.0) where
  speedOfSound = 13397.244
  

