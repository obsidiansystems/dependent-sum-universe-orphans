{-# LANGUAGE FlexibleContexts #-}
{-# LANGUAGE FlexibleInstances #-}
{-# OPTIONS_GHC -fno-warn-orphans #-}

module Data.Some.Universe.Orphans where

import Data.Functor.Sum
import Data.Some
import Data.Universe

instance (Universe (Some a), Universe (Some b)) => Universe (Some (Sum a b)) where
  universe = fmap (mapSome InL) universe ++ fmap (mapSome InR) universe
