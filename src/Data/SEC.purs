-- | Provides monomorphic versions of functions for a nice DSL.
-- | The majority of these functions are just `(<$>)`.
-- |
-- | The idea here is that you can traverse into a data structure and
-- | modify some piece of it.
-- | This library is like a much more simplistic version of `purescript-lens`.
module Data.SEC where

  import           Data.Array                (length, nub, snoc)
  import           Data.Either               (Either())
  import           Data.Foldable             (foldl)
  import           Data.Maybe                (Maybe(..))
  import           Data.Tuple                (Tuple())

  import qualified Data.Profunctor        as P
  import qualified Data.Profunctor.Choice as P
  import qualified Data.Profunctor.Strong as P

  infixr 9 ..
  (..) :: forall a b c. (b -> c) -> (a -> b) -> (a -> c)
  (..) = (<$>)

  andAlso :: forall a b c d. (a -> c) -> (b -> d) -> Tuple a b -> Tuple c d
  andAlso = P.(***)

  argument :: forall a b c. (a -> b) -> (b -> c) -> (a -> c)
  argument = (<#>)

  connect :: forall a b c. (a -> c) -> (b -> c) -> Either a b -> c
  connect = P.(|||)

  elements :: forall a b. (a -> b) -> [a] -> [b]
  elements = (<$>)

  first :: forall a b c. (a -> b) -> Tuple a c -> Tuple b c
  first = P.first

  inHead :: forall a. (a -> a) -> [a] -> [a]
  inHead = inPos 0

  inLast :: forall a. (a -> a) -> [a] -> [a]
  inLast f xs = inPos (length xs - 1) f xs

  inPos :: forall a. Number -> (a -> a) -> [a] -> [a]
  inPos n f = go n []
    where
      go _ acc []     = acc
      go 0 acc (x:xs) = acc ++ (f x:xs)
      go n acc (x:xs) = go (n - 1) (acc `snoc` x) xs

  inSome :: forall a. [Number] -> (a -> a) -> [a] -> [a]
  inSome ns f xs = foldl (\acc n -> inPos n f acc) xs $ nub ns

  left :: forall a b c. (a -> b) -> Either a c -> Either b c
  left = P.left

  just :: forall a b. (a -> b) -> Maybe a -> Maybe b
  just = (<$>)

  orElse :: forall a b c d. (a -> c) -> (b -> d) -> Either a b -> Either c d
  orElse = P.(+++)

  result :: forall a b c. (b -> c) -> (a -> b) -> (a -> c)
  result = (<$>)

  right :: forall a b c. (a -> b) -> Either c a -> Either c b
  right = P.right

  second :: forall a b c. (a -> b) -> Tuple c a -> Tuple c b
  second = P.second

  set :: forall a b. a -> b -> a
  set = const

  split :: forall a b c. (a -> b) -> (a -> c) -> a -> Tuple b c
  split = P.(&&&)
