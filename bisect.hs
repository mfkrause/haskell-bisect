m :: Double -> Double -> Double
m a b = (a + b) / 2

bisect :: (Double -> Double) -> Double -> Double -> Double -> Double
bisect f a b eps
  | abs (b - a) < eps = m a b
  | f a * f (m a b) < 0 = bisect f a (m a b) eps
  | otherwise = bisect f (m a b) b eps
