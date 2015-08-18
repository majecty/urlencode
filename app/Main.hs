module Main where

import System.Environment
import Lib

main :: IO ()
main = do
  arg:_ <- getArgs
  let encodeResult = urlencode arg
  case encodeResult of
    Left err -> putStrLn "ERROR"  >> putStrLn err
    Right encoded -> putStrLn encoded
