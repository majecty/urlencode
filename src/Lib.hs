module Lib
    ( someFunc,
      UrlEncodeMonad,
      urlencode
    ) where

import Data.URLEncoded

type UrlEncodeMonad = Either String

someFunc :: IO ()
someFunc = putStrLn "someFunc"

urlencode :: String -> UrlEncodeMonad String
urlencode a = urlShow `fmap` importString a
