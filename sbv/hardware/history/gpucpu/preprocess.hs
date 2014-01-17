#!/usr/bin/env runhaskell

import Control.Applicative
import Control.Lens
import Control.Monad
import Data.List
import Data.List.Split
import System.Environment

main :: IO ()
main = do
  fns <- getArgs
  strs <- (lines . concat) <$> mapM readFile fns
  
  let 
      strs2 = filter (not . isPrefixOf "#") strs
      xs = map (ix 2 %~ ("pwn"++)) $ map (splitOn ",") strs2
      
  
  mapM_ print xs

  