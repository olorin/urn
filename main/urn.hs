{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE NoImplicitPrelude #-}

import           Options.Applicative

import           System.IO

data Monkey =
    Draw

commandP :: ParserInfo Monkey
commandP =
  info (helper <*> monkeyP) (
       fullDesc
    <> progDesc "Sample various things."
    <> header "urn"
    )

monkeyP :: Parser Monkey
monkeyP = pure Draw

main :: IO ()
main = do
  _cmd <- execParser commandP
  putStrLn "no"
