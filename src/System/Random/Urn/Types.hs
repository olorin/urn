{-# LANGUAGE OverloadedStrings #-}
{-# OPTIONS_GHC -funbox-strict-fields #-}

module System.Random.Urn.Types (
    Distribution(..)
  , Mean(..)
  , StdDev(..)
  , Lower(..)
  , Upper(..)
  ) where

newtype Mean =
  Mean {
    unMean :: Double
  } deriving (Eq, Show)

newtype StdDev =
  StdDev {
    unStdDev :: Double
  } deriving (Eq, Show)

newtype Lower =
  Lower {
    unLower :: Double
  } deriving (Eq, Show)

newtype Upper =
  Upper {
    unUpper :: Double
  } deriving (Eq, Show)

data Distribution =
    Gaussian !Mean !StdDev
  | Uniform !Lower !Upper
  deriving (Eq, Show)
